require './lib/fib'

class AsyncThread
  def self.perform
    threads = []

    Fib::TIMES.times do |idx|
      threads << Thread.new do
        Fib.fib(Fib::LIMIT)
      end
    end

    threads.map(&:join)
  end
end
