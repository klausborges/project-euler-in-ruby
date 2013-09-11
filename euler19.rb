#!/usr/bin/env ruby
# Euler 19: Counting Sundays

require 'date'

# Returns the number of Sundays which are the first day of the month between
# two date objects, first and last
def count_sundays(first, last)
  (first..last).select { |n| n.sunday? && n.mday == 1 }.size
end

puts count_sundays(Date.new(1901, 1, 1), Date.new(2000, 12, 31))

# The two other methods below proved to be less efficient
# The bove method presents some discrepancies with the two
# others when going further than the given challenge date

# DAY = 60*60*24
# def count_sundays(first, last)
#   days = (last - first)/DAY  # number of days between first and last
#   (0..days).select { |n|
#     (first + n*DAY).sunday? && (first + n*DAY).mday == 1
#   }.length
# end

# Faster than the method above, less iterations
# def count_sundays(first_year, last_year)
#   count = 0
#   (first_year..last_year).each do |y|
#     (1..12).each { |m| count += 1 if Time.new(y, m, 1).sunday? }
#   end
#
#   count
# end