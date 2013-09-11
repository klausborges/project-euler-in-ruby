#!/usr/bin/env ruby
# Euler 17: Number letter count

# Translation hash
NUMBERS = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
           6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
           11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen",
           15 => "fifteen", 16 => "sixteen", 17 => "seventeen",
           18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty",
           40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy",
           80 => "eighty", 90 => "ninety" }

# Integer class extension
# Integer.to_word returns the literal version of any Integer in (1..1000)
class Integer
  def to_word
    case self
    when 1..19
      NUMBERS[self]
    when 20..99
      self % 10 == 0 ?
        NUMBERS[self] :
        NUMBERS[(self/10)*10] + ' ' + NUMBERS[self%10]
    when 100..999
      self % 100 == 0 ?
        NUMBERS[self/100] + " hundred" :
        NUMBERS[self/100] + " hundred and " + (self%100).to_word
    when 1000
      "one thousand"
    end
  end
end

# Returns the number of letters in all numbers in range
def number_letter_count(range)
  range.map { |n| n.to_word.gsub(' ', '').length }.inject(:+)
end

puts number_letter_count((1..1000))