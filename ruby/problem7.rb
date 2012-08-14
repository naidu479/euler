# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

def get1001Prime()
  def isPrime(n)
    return false if n <= 1
    2.upto(Math.sqrt(n).to_i) do |x|
      return false if n%x == 0
    end
    true
  end

  nmb=0
  temp=0
  while nmb != 10001
    temp = temp +1 
    nmb = nmb+1 if isPrime(temp)
  end
  puts temp
end
get1001Prime()