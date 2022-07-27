# typed: false
# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FeatureFlags::Adapters::TrueAdapter do
  subject(:true_adapter) { described_class.new(credentials) }

  let(:credentials) { FeatureFlags::Credentials.new(api_key: 'API_KEY') }

  describe '#feature_account_enabled?' do
    let(:account_request) do
      FeatureFlags::Params::AccountRequest.new(
        feature: 'random_string',
        account_id: 'random_string',
      )
    end

    it 'always returns true' do
      expect(true_adapter.feature_account_enabled?(account_request)).to eq(true)
    end
  end
end
