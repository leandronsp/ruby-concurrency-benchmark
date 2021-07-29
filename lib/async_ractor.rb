require './lib/fib'

class AsyncRactor
  def self.perform
    ractors = []

    Fib::TIMES.times do |idx|
      ractors << Ractor.new do
        Fib.fib(Fib::LIMIT)
      end
    end

    ractors.map(&:take)
  end
end
