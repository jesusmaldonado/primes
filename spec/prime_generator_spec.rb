require 'spec_helper'
require 'prime'
describe Primes::PrimeGenerator do
  before do
    @prime_generator = Primes::PrimeGenerator.new()
    @prime_generator_20_primes = Primes::PrimeGenerator.new(:num_primes => 20)
    @prime_generator_10000_primes = Primes::PrimeGenerator.new(:num_primes => 10000)
  end
  describe "#new" do
    describe "prime_generator" do
      it "generate 10 default primes" do
        expect(@prime_generator.num_primes).to eql(10)
      end
      it "has a default max number for the sieve" do
        expect(@prime_generator.max_num).to eql(100)
      end
      it "generate 20 primes" do
        expect(@prime_generator_20_primes.num_primes).to eql(20)
      end
    end
  end

  describe "#generate_primes" do
      it "generates a list of the first 10 primes by default" do
        expect(@prime_generator.primes.length).to eql(10)
        expect(@prime_generator.primes).to eql(Prime.first 10)
      end
      it "generates a list of the first 20 primes" do
        expect(@prime_generator_20_primes.primes.length).to eql(20)
        expect(@prime_generator_20_primes.primes).to eql(Prime.first 20)
      end
      it "generates a list of the first 10000 primes" do
        expect(@prime_generator_10000_primes.primes.length).to eql(10000)
        expect(@prime_generator_10000_primes.primes).to eql(Prime.first 10000)
      end
  end
end
