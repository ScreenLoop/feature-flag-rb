# typed: strict
# frozen_string_literal: true

module FeatureFlags
  module Params
    class AccountRequest < T::Struct
      include T::Struct::ActsAsComparable

      const :feature, String
      const :account_id, String
    end
  end
end
