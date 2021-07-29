class Fib
  TIMES = 300.freeze
  LIMIT = 30.freeze

  def self.fib(n)
    n < 2 ? n : fib(n - 1) + fib(n - 2)
  end
end
