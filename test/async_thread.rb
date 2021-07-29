require 'benchmark'
require './lib/async_thread'

Benchmark.bm do |x|
  x.report('thread') { AsyncThread.perform }
end
