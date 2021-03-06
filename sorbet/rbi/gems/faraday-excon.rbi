# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/faraday-excon/all/faraday-excon.rbi
#
# faraday-excon-1.1.0

module Faraday
end
class Faraday::Adapter
end
class Faraday::Adapter::Excon < Faraday::Adapter
  def amend_opts_with_proxy_settings!(opts, req); end
  def amend_opts_with_ssl!(opts, ssl); end
  def amend_opts_with_timeouts!(opts, req); end
  def build_connection(env); end
  def call(env); end
  def needs_ssl_settings?(env); end
  def opts_from_env(env); end
  def proxy_settings_for_opts(proxy); end
  def read_body(env); end
end
module Faraday::Excon
end
