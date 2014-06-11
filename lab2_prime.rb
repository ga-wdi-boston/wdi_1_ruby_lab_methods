require 'pry'

def prime?(number)
  (2...number).each do |divisor|
    if number % divisor == 0
      return false
    end
  end

  return true
end

# Crazy one-line version
# def prime?(number)
#   (2...number).all?{ |divisor| number % divisor != 0 }
# end

binding.pry
