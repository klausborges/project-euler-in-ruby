#!/usr/bin/env ruby
# Euler 46: Goldbach's other conjecture

require 'prime'

# Returns the first composite number n that can't be obtained by the following
# formula: n = p + 2*k^2, where p is a prime and k is an integer
def goldbach_conjecture
  (2..Float::INFINITY).lazy.each do |n|
    next if Prime.prime?(n) || n.even?

    found = false
    Prime.each(n) do |p|
      k = Math.sqrt((n-p)/2).to_i
      if n == p + 2*k**2
        found = true
        break
      end
    end

    return n unless found
  end
end

puts goldbach_conjecture