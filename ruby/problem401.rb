require 'prime'
def sigma2(n)
  def factors_of(number)
    primes, powers = number.prime_division.transpose
    exponents = powers.map{|i| (0..i).to_a}
    divisors = exponents.shift.product(*exponents).map do |powers|
      primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
    end
    divisors.sort
  end

  sum =0
  factors_of(n).each{|x| sum+=x*x}
  sum
end

def sum_sigma2(k)
  res=1
  for i in 2..k
    res += sigma2(i)
  end
  res
end

p sum_sigma2 100000