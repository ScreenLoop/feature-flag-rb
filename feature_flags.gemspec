# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'feature_flags/version'

Gem::Specification.new do |spec|
  spec.name        = 'feature_flags'
  spec.version     = FeatureFlags::VERSION
  spec.authors     = ['Screenloop']
  spec.email       = ['engineering@screenloop.com']
  spec.homepage    = 'https://www.screenloop.com'
  spec.summary     = 'Feature Flag Library'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['homepage_uri'] = spec.homepage

  spec.files = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)

  spec.required_ruby_version = '>= 2.6.9'

  spec.add_dependency 'json', '2.6.2'
  spec.add_dependency 'sorbet-runtime'
  spec.add_dependency 'sorbet-struct-comparable'
  spec.add_dependency 'splitclient-rb', '~> 8.0'

  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-parameterized'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'rubocop-sorbet'
  spec.add_development_dependency 'sorbet'
end
