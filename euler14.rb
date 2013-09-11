#!/usr/bin/env ruby
# Euler 14: Longest Collatz sequence

# Returns an array with the sequence according to the function:
# n is even -> n/2
# n is odd  -> 3n + 1
def sequence(n)
  seq = []
  while n > 1
      n = n.even? ? n/2 : 3*n + 1
      seq << n
  end

  seq
end

# Returns the n which produces the longest sequence according to the sequence
# function
def longest_sequence(upper_bound)
  # max is a pair [n, chain_size]
  max = [0, 0]

  (1..upper_bound).each do |n|
    max = [[n, sequence(n).size], max].max_by { |v| v[1] }
  end

  max[0]
end

puts longest_sequence(1_000_000)