require_relative 'prime_table'
require_relative 'prime_generator'

module Primes
  class PrimeParser
    def initialize(opts = {})
      @prime_generator = Primes::PrimeGenerator.new(opts)
      @prime_table = Primes::PrimeTable.new()
    end

    def print
      @prime_table.primes = @prime_generator.primes
      @prime_table.print_table
    end
  end
end
