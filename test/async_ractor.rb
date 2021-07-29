require './lib/fib'
require 'benchmark'

ractors = []

benchmark = Benchmark.measure do
  Fib::TIMES.times do |idx|
    ractors << Ractor.new(idx) do |id|
      Fib.fib(30)
      puts id
    end
  end

  ractors.map(&:take)
end

puts benchmark
