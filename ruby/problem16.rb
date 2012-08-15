# Problem 16 
# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 21000?

def sumOfDig(n)
  sum = 0
  n.to_s.each_char { |x| sum = sum + x.to_i}
  puts sum
end

num= 2**1000
sumOfDig(num)