require 'pry'

def iterative_fibs(length)
  fibs = []
  length.times do |n|
    if n.between?(0, 1)
      fibs << 1
    else
      fibs << fibs[-1] + fibs[-2]
    end
  end
  fibs
end

def recursive_fibs(length)
  if length.between?(1, 2)
    [1] * length
  else
    previous_fibs = recursive_fibs(length - 1)
    previous_fibs + [previous_fibs[-1] + previous_fibs[-2]]
  end
end

binding.pry
