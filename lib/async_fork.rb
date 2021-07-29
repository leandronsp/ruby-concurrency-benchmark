require './lib/fib'

class AsyncFork
  def self.perform
    Fib::TIMES.times do |idx|
      fork do
        Fib.fib(Fib::LIMIT)
      end
    end

    Process.waitall
  end
end
