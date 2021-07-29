require 'benchmark'
require './lib/async_ractor'

Benchmark.bm do |x|
  x.report('ractor') { AsyncRactor.perform }
end
