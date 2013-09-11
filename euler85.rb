#!/usr/bin/env ruby
# Euler 85: Counting rectangles
# Shitty

class Integer
  def choose(k)
    self.factorial/(k.factorial * (self-k).factorial)
  end

  def factorial
    self == 0? 1 : (1..self).reduce(:*)
  end
end

def biggest_area
  rectangles, area = 0, 0

  (50..60).each do |n|
    (50..n).each do |k|
      r = n.choose(k)
      if r > rectangles
        rectangles = r
        area = n*k
      end
    end
  end

  area
end

puts biggest_area