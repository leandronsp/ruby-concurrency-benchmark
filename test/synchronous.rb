require './lib/fib'
require 'benchmark'

benchmark = Benchmark.measure do
  Fib::TIMES.times do |idx|
    Fib.fib(30)
    puts idx
  end
end

puts benchmark
