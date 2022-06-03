# typed: strict
# frozen_string_literal: true

module FeatureFlags
  class Client
    extend T::Sig

    class << self
      extend T::Sig

      sig { returns(Config) }
      def config
        @config ||= T.let(FeatureFlags::Config.new, T.nilable(Config))
        T.must(@config)
      end

      sig { params(_blk: T.proc.params(config: Config).void).void }
      def configure(&_blk)
        yield config
      end
    end

    sig { params(adapter: Adapter).void }
    def initialize(adapter: Factory.build(T.must(Client.config.adapter), T.must(Client.config.credentials)))
      @adapter = adapter
    end

    sig { params(account_request: Params::AccountRequest).returns(T::Boolean) }
    def account_enabled?(account_request)
      adapter.feature_account_enabled?(account_request)
    end

    private

    sig { returns(Adapter) }
    attr_reader :adapter
  end
end
