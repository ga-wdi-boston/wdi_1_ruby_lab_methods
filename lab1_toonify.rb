require 'pry'

def toonify(accent, sentence)
  if accent == :daffy
    sentence.gsub('s', 'th').gsub('S', 'Th')
  elsif accent == :elmer
    sentence.gsub('r', 'w').gsub('R', 'W')
  else
    sentence
  end
end

# More complex and extensible version
#
# ACCENTS = {
#   daffy: ['s', 'th'],
#   elmer: ['r', 'w']
# }
#
# def toonify(accent, sentence)
#   if ACCENTS.key?(accent)
#     sentence.gsub(*ACCENTS[accent]).gsub(*ACCENTS[accent].map(&:capitalize))
#   else
#     sentence
#   end
# end


binding.pry
