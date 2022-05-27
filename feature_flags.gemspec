# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'feature_flags/version'

Gem::Specification.new do |spec|
  spec.name        = 'feature_flag'
  spec.version     = FeatureFlag::VERSION
  spec.authors     = ['Screenloop']
  spec.email       = ['engineering@screenloop.com']
  spec.homepage    = 'https://www.screenloop.com'
  spec.summary     = 'Feature Flag Library'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['homepage_uri'] = spec.homepage

  spec.files = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)

  spec.required_ruby_version = '>= 2.6'
  spec.add_dependency 'rails', '~> 6.1.3'
  spec.add_dependency 'splitclient-rb', '~> 7.3'
end
