# typed: strict
# frozen_string_literal: true

module FeatureFlags
  class Factory
    extend T::Sig

    ADAPTERS = T.let(
      {
        split_io_adapter: Adapters::SplitIoAdapter,
        true_adapter: Adapters::TrueAdapter,
      },
      T::Hash[Symbol, T.class_of(Adapter)],
    )

    sig do
      params(
        adapter_name: T.any(String, Symbol),
        credentials: Credentials,
      ).returns(Adapter)
    end
    def self.build(adapter_name, credentials)
      adapter_class = ADAPTERS[adapter_name.to_sym]
      raise "Adapter #{adapter_name} is not supported." if adapter_class.nil?

      adapter_class.new(credentials)
    end
  end
end
