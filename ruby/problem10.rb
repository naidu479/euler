# # Problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.


def getSumPrime()
  def isPrime(n)
    return false if n <= 1
    2.upto(Math.sqrt(n).to_i) do |x|
      return false if n%x == 0
    end
    true
  end

  sum=0
  (2..2000000).each { |x| sum=sum+x if isPrime(x) }
  puts sum
end
getSumPrime()