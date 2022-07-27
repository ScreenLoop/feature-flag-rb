# typed: strict
# frozen_string_literal: true

module FeatureFlags
  module Adapters
    class TrueAdapter < Adapter
      extend T::Sig

      sig { override.params(_account_request: Params::AccountRequest).returns(T::Boolean) }
      def feature_account_enabled?(_account_request)
        true
      end
    end
  end
end
