require './lib/fib'
require 'benchmark'

threads = []

benchmark = Benchmark.measure do
  Fib::TIMES.times do |idx|
    threads << Thread.new do
      Fib.fib(30)
      puts idx
    end
  end

  threads.map(&:join)
end

puts benchmark
