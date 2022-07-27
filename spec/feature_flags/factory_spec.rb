# typed: false
# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FeatureFlags::Factory do
  subject(:factory) { described_class }

  let(:credentials) { FeatureFlags::Credentials.new(api_key: 'API_KEY') }

  describe '#build' do
    describe 'given an invalid adapter name' do
      let(:adapter_name) { 'invalid' }

      it 'raises an error' do
        expect do
          factory.build(adapter_name, credentials)
        end.to raise_error(StandardError)
      end
    end

    describe 'given valid adapter names' do
      using RSpec::Parameterized::TableSyntax
      where(:adapter_name, :expected_adapter) do
        'null'      | ::FeatureFlags::Adapters::NullAdapter
        :null       | ::FeatureFlags::Adapters::NullAdapter
        'split_io'  | ::FeatureFlags::Adapters::SplitIoAdapter
        :split_io   | ::FeatureFlags::Adapters::SplitIoAdapter
      end

      with_them do
        it 'returns the correct adapter' do
          result = factory.build(adapter_name, credentials)
          expect(result).to be_an_instance_of(expected_adapter)
        end
      end
    end
  end
end
