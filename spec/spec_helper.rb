# typed: strict
# frozen_string_literal: true

require 'feature_flags'
require 'sorbet-runtime'
require 'rspec-parameterized'

RSpec.configure do |_c|
  T::Configuration.inline_type_error_handler = lambda do |error|
    raise error unless error.message.include? 'got type RSpec::Mocks'
  end

  T::Configuration.call_validation_error_handler = lambda do |_signature, opts|
    raise TypeError, opts[:pretty_message] unless opts[:message].include? 'got type RSpec::Mocks'
  end
end
