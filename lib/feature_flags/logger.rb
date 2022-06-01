# typed: strict
# frozen_string_literal: true

module FeatureFlags
  class << self
    extend T::Sig

    sig { returns(Logger) }
    def logger
      @logger ||= Logger.new($stdout).tap do |log|
        log.progname = name
      end
    end

    sig { params(logger: T.nilable(Logger)).returns(T.nilable(Logger)) }
    attr_writer :logger
  end
end
