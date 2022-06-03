# typed: strict
# frozen_string_literal: true

module FeatureFlags
  class Credentials < T::Struct
    include T::Struct::ActsAsComparable

    const :api_key, String
  end
end
