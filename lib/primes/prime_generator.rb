module Primes
  class PrimeGenerator
    def initialize(opts = {})
      @num_primes = opts[:num_primes] ? opts[:num_primes].to_i : 10
      @max_num = 100
      @primes = []
    end
    attr_reader :num_primes
    attr_writer :primes
    attr_accessor :max_num

    def primes
      potential_primes = generate_primes()
      until potential_primes.length == @num_primes
        increase_max
        potential_primes = generate_primes
      end
      @primes = potential_primes
    end

    private
    def increase_max
      @max_num = @max_num * 100
    end

    def generate_primes
      primes = (0..@max_num).to_a
      primes[0] = primes[1] = nil
      steps = 0
      primes.each do |p|
        # Skip if nil
        next unless p

        # Break if we are past the square root of the max value
        break if p*p > @max_num
        steps += 1
        # Start at the square of the current number, and step through.
        # Go up to the max value, by multiples of the current number, and replace
        # that value with nil in the primes array
        (p*p).step(@max_num,p) { |m| primes[m] = nil }
      end
      primes = primes.compact.take(@num_primes)
    end
  end
end
