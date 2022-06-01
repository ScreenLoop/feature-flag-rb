# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/parallel/all/parallel.rbi
#
# parallel-1.22.1

module Parallel
  def self.add_progress_bar!(job_factory, options); end
  def self.all?(*args, &block); end
  def self.any?(*args, &block); end
  def self.call_with_index(item, index, options, &block); end
  def self.create_workers(job_factory, options, &block); end
  def self.each(array, options = nil, &block); end
  def self.each_with_index(array, options = nil, &block); end
  def self.extract_count_from_options(options); end
  def self.flat_map(*args, &block); end
  def self.in_processes(options = nil, &block); end
  def self.in_threads(options = nil); end
  def self.instrument_finish(item, index, result, options); end
  def self.instrument_start(item, index, options); end
  def self.map(source, options = nil, &block); end
  def self.map_with_index(array, options = nil, &block); end
  def self.process_incoming_jobs(read, write, job_factory, options, &block); end
  def self.replace_worker(job_factory, workers, index, options, blk); end
  def self.with_instrumentation(item, index, options); end
  def self.work_direct(job_factory, options, &block); end
  def self.work_in_processes(job_factory, options, &blk); end
  def self.work_in_ractors(job_factory, options); end
  def self.work_in_threads(job_factory, options, &block); end
  def self.worker(job_factory, options, &block); end
  def self.worker_number; end
  def self.worker_number=(worker_num); end
  extend Parallel::ProcessorCount
end
module Parallel::ProcessorCount
  def physical_processor_count; end
  def processor_count; end
end
class Parallel::DeadWorker < StandardError
end
class Parallel::Break < StandardError
  def initialize(value = nil); end
  def value; end
end
class Parallel::Kill < Parallel::Break
end
class Parallel::UndumpableException < StandardError
  def backtrace; end
  def initialize(original); end
end
class Parallel::ExceptionWrapper
  def exception; end
  def initialize(exception); end
end
class Parallel::Worker
  def close_pipes; end
  def initialize(read, write, pid); end
  def pid; end
  def read; end
  def stop; end
  def thread; end
  def thread=(arg0); end
  def wait; end
  def work(data); end
  def write; end
end
class Parallel::JobFactory
  def initialize(source, mutex); end
  def next; end
  def pack(item, index); end
  def producer?; end
  def queue_wrapper(array); end
  def size; end
  def unpack(data); end
end
class Parallel::UserInterruptHandler
  def self.kill(thing); end
  def self.kill_on_ctrl_c(pids, options); end
  def self.restore_interrupt(old, signal); end
  def self.trap_interrupt(signal); end
end
