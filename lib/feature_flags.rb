# typed: strict
# frozen_string_literal: true

require 'splitclient-rb'
require 'sorbet-runtime'
require 'sorbet-struct-comparable'
require 'singleton'
require 'logger'

require 'feature_flags/version'
require 'feature_flags/logger'
require 'feature_flags/credentials'
require 'feature_flags/params/account_request'
require 'feature_flags/adapter'
require 'feature_flags/config'
require 'feature_flags/client'
require 'feature_flags/adapters/split_io_adapter'
require 'feature_flags/adapters/null_adapter'
require 'feature_flags/factory'
