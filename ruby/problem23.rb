# Problem 23
# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
# A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.
# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.
# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

require 'prime'
# require 'set'

def sum(n)
  def factors_of(number)
    primes, powers = number.prime_division.transpose
    exponents = powers.map{|i| (0..i).to_a}
    divisors = exponents.shift.product(*exponents).map do |powers|
      primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
    end
    divisors.reject { |i| i==number }
  end
  factors_of(n).reduce(:+)
end

set=[]
sums = []
max = 28123
sum = 0

2.upto(max){|i|  set<<i if i<sum(i)}

c=0
set.each do |x|
  set[c..set.length].each do |y|
    sum = x + y
    sums << sum unless sum > max
  end
  c += 1
end
sums.uniq!
puts (1..max).reject { |n| sums.include? n }.reduce(:+)