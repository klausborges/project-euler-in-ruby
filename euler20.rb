#!/usr/bin/env ruby
# Euler 20: Factorial digit sum

# Returns the sum of the digits of the number n
def digit_sum(n)
  n.to_s.chars.map(&:to_i).inject(:+)
end

# Returns the factorial of n
def factorial(n)
  n == 0? 1 : (1..n).inject(:*)
end

p digit_sum(factorial(100))