#!/usr/bin/env ruby
# Euler 12: Highly divisible triangular number

require 'prime'

# Returns the number of factors of n, which are obtained by the multiplication
# of the exponents of n's prime factors plus 1
def number_of_factors(n)
  n == 1 ? 1 : Prime.prime_division(n).map { |f| f[1]+1 }.inject(:*)
end

# Returns the first triangular number with more divisors than min_divisors
def triangular_divisors(min_divisors)
  (min_divisors..Float::INFINITY).lazy.each do |n|
    # t is the nth triangular number
    t = (1..n).inject(:+)
    return t if number_of_factors(t) > min_divisors
  end
end

puts triangular_divisors(500)