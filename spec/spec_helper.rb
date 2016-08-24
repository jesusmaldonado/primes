$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
Dir[File.dirname(__FILE__) + '/../lib/primes/*.rb'].each do |file|
  require_relative file
end
