#!/usr/bin/env ruby
# Euler 48: Self powers

# Returns the sum of the series n**n in range
def self_power_sum(range)
  range.map { |n| n ** n }.inject(:+)
end

puts self_power_sum((1..1000)).to_s[-10, 10]