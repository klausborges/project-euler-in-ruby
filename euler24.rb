#!/usr/bin/env ruby
# Euler 24: Lexicographic permutations

# Returns the nth permutation of the digits in range
def get_permutation(range, n)
  range.to_a.permutation.lazy.drop(n-1).first.join.to_i
end

puts get_permutation((0..9), 1000000)