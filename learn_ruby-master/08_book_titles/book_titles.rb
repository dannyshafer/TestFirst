def reserved?(word)
  ["a", "an", "the", "and", "in", "of"].include? word
end

def title(words)
  each_word = words.split(' ')
  first = each_word[0].capitalize!
  second = []
  third = nil
  each_word[1..(each_word.length - 1)].each do |word|
    if reserved?(word)
      second << word
    else
      second << word.capitalize!
    end
  third = second.join(' ')
  end
  first + ' ' + third
end
