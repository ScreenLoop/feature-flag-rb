# typed: false
# frozen_string_literal: true

require './lib/feature_flags'

RSpec.describe FeatureFlags::Adapters::SplitIoAdapter do
  describe '#client' do
    let(:split_factory_mock) do
      instance_double('SplitIoClient::SplitFactory')
    end
    let(:split_client_mock) do
      instance_double('SplitIoClient::SplitClient')
    end

    before do
      allow(::SplitIoClient::SplitFactoryBuilder).to receive(:build)
        .and_return(split_factory_mock)

      allow(split_factory_mock).to receive(:client)
        .and_return(split_client_mock)

      allow(split_client_mock).to receive(:block_until_ready)
    end

    describe 'when adapter is instantiated multiple times' do
      before do
        described_class.new(FeatureFlags::Credentials.new(api_key: 'API_KEY')).send(:client)
        described_class.new(FeatureFlags::Credentials.new(api_key: 'API_KEY')).send(:client)
      end

      it 'the API client is built only once' do
        expect(::SplitIoClient::SplitFactoryBuilder).to have_received(:build).once
      end
    end
  end
end
