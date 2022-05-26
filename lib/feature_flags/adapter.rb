# typed: strict
# frozen_string_literal: true

module FeatureFlags
  class Adapter
    extend T::Sig
    extend T::Helpers
    abstract!

    sig { abstract.params(account_request: Params::AccountRequest).returns(T::Boolean) }
    def feature_account_enabled?(account_request); end
  end
end
