#!/usr/bin/env ruby
# Euler 99: Largest exponential

# Returns the line number of the largest exponential in file, organized as
# one base,exponent per line, using logarithms to make calculations feasible
def largest_exponential(file)
  max, line = 0, 0

  f = File.open(file)
  f.each do |l|
    base, exp = l.split(',').map(&:to_i)
    max, line = exp*Math.log(base), f.lineno if exp*Math.log(base) > max
  end
  f.close

  line
end

puts largest_exponential("basexp.txt")