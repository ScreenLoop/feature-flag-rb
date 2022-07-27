# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/proc_to_ast/all/proc_to_ast.rbi
#
# proc_to_ast-0.1.0

module ProcToAst
end
class ProcToAst::MultiMatchError < StandardError
end
class ProcToAst::Parser
  def do_parse(source); end
  def initialize; end
  def parse(filename, linenum); end
  def parser; end
  def traverse_node(node); end
  def trim_and_retry(buf); end
end
class Proc
  def to_ast; end
  def to_raw_source(highlight: nil); end
  def to_source(highlight: nil); end
end
