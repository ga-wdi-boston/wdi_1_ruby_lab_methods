require 'pry'

def prime?(number)
  (2..(number - 1)).each do |divisor|
    if number % divisor == 0
      return false
    end
  end

  return true
end

# Crazy one-line version
# def prime?(number)
#   !(2..(number - 1)).any?{ |divisor| number % divisor == 0 }
# end

binding.pry
