require 'pry'

STARTS = %w(Bed Brunn Dun Far Glen Tarn)
MIDDLES = %w(ding fing ly ston)
ENDS = %w(borough burg ditch hall pool ville way worth)
SUFFIXES = {
  water: ['-on-sea', ' Falls'],
  mountain: [' Heights', ' Peak']
}

def town_names(number: 3, near: :nothing, short: false)
  names = []

  number.times do
    name = STARTS.sample
    if rand < 0.25 && !short
      name += MIDDLES.sample
    end
    name += ENDS.sample
    if SUFFIXES.keys.include?(near)
      name += SUFFIXES[near].sample
    end
    names << name
  end

  names
end

binding.pry
