# typed: strict
# frozen_string_literal: true

module FeatureFlags
  module Adapters
    class SplitIoAdapter < Adapter
      extend T::Sig

      sig { params(api_key: String).void }
      def initialize(api_key:)
        super()
        @api_key = api_key
      end

      sig { override.params(account_request: Params::AccountRequest).returns(T::Boolean) }
      def feature_account_enabled?(account_request)
        treatment = client&.get_treatment(
          'key_not_needed_to_enable_a_feature_per_organization',
          account_request.feature,
          { organization_id: account_request.account_id },
        )

        treatment == 'on'
      end

      private

      sig { returns(T.nilable(String)) }
      attr_reader :api_key

      sig { returns(T.nilable(::SplitIoClient::SplitClient)) }
      def client
        SplitIoAdapterClient.instance.client(api_key)
      end

      class SplitIoAdapterClient
        extend T::Sig
        include Singleton

        sig { params(api_key: T.nilable(String)).returns(T.nilable(::SplitIoClient::SplitClient)) }
        def client(api_key)
          @client ||= T.let(@client, T.nilable(::SplitIoClient::SplitClient))

          if api_key.present? && @client.blank?
            @client ||= ::SplitIoClient::SplitFactoryBuilder.build(
              api_key,
              { block_until_ready: 10 },
            ).client

            begin
              @client.block_until_ready
            rescue ::SplitIoClient::SDKBlockerTimeoutExpiredException
              Rails.logger.warn('Split.io SDK is not ready...')
            end
          end

          @client
        end
      end
    end
  end
end
