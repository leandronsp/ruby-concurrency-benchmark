require 'benchmark'
require './lib/synchronous'
require './lib/async_fork'
require './lib/async_thread'
require './lib/async_ractor'

Benchmark.bm do |x|
  x.report('synchronous') { Synchronous.perform }
  x.report('fork')        { AsyncFork.perform   }
  x.report('thread')      { AsyncThread.perform }
  x.report('ractor')      { AsyncRactor.perform }
end
