#!/usr/bin/env ruby
# Euler 4: Largest palindrome product

# Returns true if a number is a palindrome
def is_palindrome?(n)
  n.to_s == n.to_s.reverse
end

# Returns the largest palindrome of the product of two numbers within the range
def largest_palindrome_product(range)
  max = 0
  range.each do |n|
    (n...range.last).each { |o| max = [max, n*o].max if is_palindrome?(n*o) }
  end

  max
end

puts largest_palindrome_product((100...1000))