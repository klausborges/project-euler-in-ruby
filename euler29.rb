#!/usr/bin/env ruby
# Euler 29: Distinct powers

# Returns the number of distinct combinations of a**b for a, b in range
def distinct_powers(range)
  powers = []
  range.each { |a| range.each { |b| powers << a**b } }
  powers.uniq.size
end

puts distinct_powers((2..100))