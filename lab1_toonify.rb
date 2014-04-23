require 'pry'

def toonify(accent, sentence)
  if accent == :daffy
    sentence.gsub('s', 'th')
  elsif accent == :elmer
    sentence.gsub('r', 'w')
  else
    sentence
  end
end

binding.pry
