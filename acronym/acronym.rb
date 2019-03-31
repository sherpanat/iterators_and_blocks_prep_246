require 'rspec'

def acronymize(sentence)
  # new_array = []
  # sentence.split.each do |word|
  #   new_array << word[0].upcase
  # end
  # new_array.join

  sentence.split.map do |word|
    word[0].upcase
  end.join
end

# puts acronymize('World Wide Web') == 'WWW'