# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/coderay/all/coderay.rbi
#
# coderay-1.1.3

module CodeRay
  def self.coderay_path(*path); end
  def self.encode(code, lang, format, options = nil); end
  def self.encode_file(filename, format, options = nil); end
  def self.encode_tokens(tokens, format, options = nil); end
  def self.encoder(format, options = nil); end
  def self.get_scanner_options(options); end
  def self.highlight(code, lang, options = nil, format = nil); end
  def self.highlight_file(filename, options = nil, format = nil); end
  def self.scan(code, lang, options = nil, &block); end
  def self.scan_file(filename, lang = nil, options = nil, &block); end
  def self.scanner(lang, options = nil, &block); end
end
