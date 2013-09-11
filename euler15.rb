#!/usr/bin/env ruby
# Euler 15: Lattice paths

# Integer class extension
class Integer
  # Returns a number's factorial
  def factorial
    self == 0 ? 1 : (1..self).reduce(:*)
  end
end

# Returns the binomial (n over k)
def binomial(n, k)
  n.factorial / (k.factorial * (n - k).factorial)
end

# Returns the number of paths in an m x n grid
def lattice_path(m, n)
  binomial(m+n, m)
end

puts lattice_path(2, 2), lattice_path(20, 20)