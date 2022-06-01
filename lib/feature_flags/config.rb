# typed: strict
# frozen_string_literal: true

module FeatureFlags
  class Config
    extend T::Sig

    sig { returns(T.nilable(T.any(String, Symbol))) }
    attr_accessor :adapter

    sig { returns(T.nilable(Credentials)) }
    attr_accessor :credentials
  end
end
