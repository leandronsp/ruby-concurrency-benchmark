require './lib/fib'
require 'benchmark'

benchmark = Benchmark.measure do
  Fib::TIMES.times do |idx|
    fork do
      Fib.fib(30)
      puts idx
    end
  end

  Process.waitall
end

puts benchmark
