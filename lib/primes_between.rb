# primes_between code goes here

def is_prime?(x)
  (2...x).each do |number|
    if x % number == 0
      return false
    end
  end
  x
end

def primes_between(prime_range)
  prime_numbers = []
  prime_range.each do |value|
    is_prime?(value) ? prime_numbers << value : nil
  end
  prime_numbers.delete(1)
  prime_numbers
end


