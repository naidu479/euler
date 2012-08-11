# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# PS. dumb problem, there is no limit to the prime factors, this solution finds prime factors in range 0..10000


def getMaxPrime(numb)
  def isPrime(n)
    for i in 2...n
         return false if (n%i) == 0
    end
    return true
  end

  primes = []
  (2..10000).each { |x| primes << x if isPrime(x) }
  
  max = 0
  primes.each do |i|
    if numb % i == 0
      max = i
    end
  end
  puts max
end

getMaxPrime(600851475143)