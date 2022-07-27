# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/diff-lcs/all/diff-lcs.rbi
#
# diff-lcs-1.5.0

class Diff::LCS::Change
  def <=>(other); end
  def ==(other); end
  def action; end
  def adding?; end
  def changed?; end
  def deleting?; end
  def element; end
  def finished_a?; end
  def finished_b?; end
  def initialize(*args); end
  def inspect(*_args); end
  def position; end
  def self.from_a(arr); end
  def self.valid_action?(action); end
  def to_a; end
  def to_ary; end
  def unchanged?; end
  include Comparable
end
class Diff::LCS::ContextChange < Diff::LCS::Change
  def <=>(other); end
  def ==(other); end
  def initialize(*args); end
  def new_element; end
  def new_position; end
  def old_element; end
  def old_position; end
  def self.from_a(arr); end
  def self.simplify(event); end
  def to_a; end
  def to_ary; end
end
module Diff::LCS
  def diff(other, callbacks = nil, &block); end
  def lcs(other, &block); end
  def patch!(patchset); end
  def patch(patchset); end
  def patch_me(patchset); end
  def sdiff(other, callbacks = nil, &block); end
  def self.LCS(seq1, seq2, &block); end
  def self.callbacks_for(callbacks); end
  def self.diff(seq1, seq2, callbacks = nil, &block); end
  def self.diff_traversal(method, seq1, seq2, callbacks, &block); end
  def self.lcs(seq1, seq2, &block); end
  def self.patch!(src, patchset); end
  def self.patch(src, patchset, direction = nil); end
  def self.sdiff(seq1, seq2, callbacks = nil, &block); end
  def self.traverse_balanced(seq1, seq2, callbacks = nil); end
  def self.traverse_sequences(seq1, seq2, callbacks = nil); end
  def self.unpatch!(src, patchset); end
  def traverse_balanced(other, callbacks = nil, &block); end
  def traverse_sequences(other, callbacks = nil, &block); end
  def unpatch!(patchset); end
  def unpatch(patchset); end
  def unpatch_me(patchset); end
end
class Diff::LCS::DefaultCallbacks
  def self.change(event); end
  def self.discard_a(event); end
  def self.discard_b(event); end
  def self.match(event); end
  def self.new(*arg0); end
end
class Diff::LCS::DiffCallbacks
  def diffs; end
  def discard_a(event); end
  def discard_b(event); end
  def finish; end
  def finish_hunk; end
  def initialize; end
  def match(_event); end
end
class Diff::LCS::ContextDiffCallbacks < Diff::LCS::DiffCallbacks
  def change(event); end
  def discard_a(event); end
  def discard_b(event); end
end
class Diff::LCS::SDiffCallbacks
  def change(event); end
  def diffs; end
  def discard_a(event); end
  def discard_b(event); end
  def initialize; end
  def match(event); end
end
module Diff::LCS::Internals
  def self.analyze_patchset(patchset, depth = nil); end
  def self.intuit_diff_direction(src, patchset, limit = nil); end
  def self.inverse_vector(a, vector); end
  def self.lcs(a, b); end
  def self.position_hash(enum, interval); end
  def self.replace_next_larger(enum, value, last_index = nil); end
end
module Diff
end
class Diff::LCS::Block
  def changes; end
  def diff_size; end
  def initialize(chunk); end
  def insert; end
  def op; end
  def remove; end
end
class Diff::LCS::Hunk
  def blocks; end
  def context_diff(last = nil); end
  def context_range(mode, op, last = nil); end
  def diff(format, last = nil); end
  def ed_diff(format, _last = nil); end
  def encode(literal, target_encoding = nil); end
  def encode_as(string, *args); end
  def end_new; end
  def end_old; end
  def file_length_difference; end
  def flag_context; end
  def flag_context=(context); end
  def initialize(data_old, data_new, piece, flag_context, file_length_difference); end
  def merge(hunk); end
  def missing_last_newline?(data); end
  def old_diff(_last = nil); end
  def overlaps?(hunk); end
  def start_new; end
  def start_old; end
  def unified_diff(last = nil); end
  def unified_range(mode, last); end
  def unshift(hunk); end
end