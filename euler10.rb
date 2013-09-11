#!/usr/bin/env ruby
# Euler 10: Summation of primes

require 'prime'

# Returns the sum of all primes below upper_bound
def sum_primes(upper_bound)
  Prime.each(upper_bound).inject(:+)
end

puts sum_primes(2_000_000)