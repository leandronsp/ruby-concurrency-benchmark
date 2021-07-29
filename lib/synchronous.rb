require './lib/fib'

class Synchronous
  def self.perform
    Fib::TIMES.times do |idx|
      Fib.fib(Fib::LIMIT)
    end
  end
end
