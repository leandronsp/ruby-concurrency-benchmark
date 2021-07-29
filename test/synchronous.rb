require 'benchmark'
require './lib/synchronous'

Benchmark.bm do |x|
  x.report('synchronous') { Synchronous.perform }
end
