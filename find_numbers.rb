# https://www.codewars.com/kata/find-numbers-which-are-divisible-by-given-number/train/ruby

def divisible_by(numbers, divisor)
  arr = []
  numbers.each do |number|
    arr << number if number % divisor == 0
  end
  arr
end
