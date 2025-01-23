# typed: strict
# frozen_string_literal: true

module FeatureFlags
  module Adapters
    class SplitIoAdapter < Adapter
      extend T::Sig

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

      sig { returns(T.nilable(::SplitIoClient::SplitClient)) }
      def client
        SplitIoAdapterClient.instance.client(credentials)
      end

      class SplitIoAdapterClient
        extend T::Sig
        include Singleton

        sig { params(credentials: Credentials).returns(T.nilable(::SplitIoClient::SplitClient)) }
        def client(credentials)
          @client ||= T.let(@client, T.nilable(::SplitIoClient::SplitClient))

          if !credentials.api_key.empty? && !@client
            @client ||= ::SplitIoClient::SplitFactoryBuilder.build(
              credentials.api_key,
              { block_until_ready: 20 },
            ).client

            begin
              @client.block_until_ready
            rescue ::SplitIoClient::SDKBlockerTimeoutExpiredException
              FeatureFlags.logger.warn('Split.io SDK is not ready...')
            end
          end

          @client
        end
      end
    end
  end
end
