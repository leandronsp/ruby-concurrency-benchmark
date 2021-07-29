require 'benchmark'
require './lib/async_fork'

Benchmark.bm do |x|
  x.report('fork') { AsyncFork.perform }
end
