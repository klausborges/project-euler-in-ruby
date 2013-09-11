#!/usr/bin/env ruby
# Euler 25: 1000-digit Fibonacci number
# Needs a  bit of work

# Returns the nth number in the Fibonacci sequence using Binet's formula
PHI = (1 + Math.sqrt(5)) / 2
PSI = (1 - Math.sqrt(5)) / 2
def fibonacci(n)
  (PHI**n - PSI**n) / Math.sqrt(5)
end

# Returns the first Fibonacci sequence term with ndigits digits
def n_digits_fibonacci(ndigits)
  (((ndigits-1)*Math.log(10) + Math.log(5)/2) / Math.log(PHI)).ceil
end

puts n_digits_fibonacci(5)

# Brute force solution, slower, just for reference
# Returns the first number in the Fibonacci sequence with ndigits

# require 'matrix'

# Returns the nth number in the Fibonacci sequence using the Fibonacci matrix
# method
# MATRIX = Matrix[[1, 1], [1, 0]]
# def fibonacci_matrix(n)
#   (MATRIX**(n-1))[0, 0]
# end

# def n_digits_fibonacci(ndigits)
#   (1..Float::INFINITY).lazy.each do |n|
#     return n if fibonacci_matrix(n).to_s.size == ndigits
#   end
# end