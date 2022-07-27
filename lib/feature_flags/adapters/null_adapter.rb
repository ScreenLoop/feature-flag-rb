# typed: strict
# frozen_string_literal: true

module FeatureFlags
  module Adapters
    class NullAdapter < Adapter
      extend T::Sig

      sig { override.params(account_request: Params::AccountRequest).returns(T::Boolean) }
      def feature_account_enabled?(account_request)
        account_request.feature.empty?
        true
      end
    end
  end
end
