module Primes
  class PrimeTable
    def initialize(opts = {})
      @primes = opts[:primes] || []
    end
    attr_accessor :primes
    def print_table
      print '     '
      @primes.each {|i| print "%-3d  " % i}
      print "\n     "
      @primes.each {|i| print '---- '}
      print "\n"
      @primes.each do |j|
          print "%-3d| " % j
          @primes.each {|i| print "%-3d  " % (i*j)}
          print "\n"
      end
    end
  end
end

# x = (1..12)
# y = (1..12)
#
# print '     '
# x.each {|i| print "%-3d  " % i}
# print "\n     "
# x.each {|i| print '---- '}
# print "\n"
#
# y.each do |j|
#     print "%-3d| " % j
#     x.each {|i| print "%-3d  " % (i*j)}
#     print "\n"
# end
