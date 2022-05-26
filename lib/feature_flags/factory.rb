# typed: strict
# frozen_string_literal: true

module FeatureFlags
  class Factory
    extend T::Sig

    ADAPTERS = T.let(
      {
        split_io: Adapters::SplitIoAdapter,
      },
      T::Hash[Symbol, T.class_of(Adapter)],
    )

    sig { params(adapter_name: T.any(String, Symbol)).returns(Adapter) }
    def self.build(adapter_name)
      adapter_class = ADAPTERS[adapter_name.to_sym]
      raise "Adapter #{adapter_name} is not supported." if adapter_class.nil?

      adapter_class.new
    end
  end
end
