def vowel?(letter)
  "aeiou".include? letter
end

def sch_phoneme?(letters)
  ["sch"].include? letters
end

def qu_phoneme?(letters)
  ["qu"].include? letters
end

def consonant_phoneme?(letters)
  ["qu"].include? letters
end

def rework(word)
  if vowel?(word[0])
    word + 'ay'
  elsif vowel?(word[1]) && !vowel?(word[0]) && !qu_phoneme?(word[0..1])
    first = word[0]
    second = word[1..(word.length - 1)]
    return second + first + 'ay'
  elsif sch_phoneme?(word[0..1])
    first = word[0..1]
    second = word[0..1]
    return first + second + 'ay'
  elsif qu_phoneme?(word[0..1])
    first = word[0..1]
    second = word[2..(word.length - 1)]
    return second + first + 'ay'
  elsif consonant_phoneme?(word[1..2])
    first = word[0..2]
    second = word[3..(word.length - 1)]
    return second + first + 'ay'
  elsif !vowel?(word[2])
    first = word[0..2]
    second = word[3..(word.length - 1)]
    return second + first + 'ay'
  elsif !vowel?(word[1])
    first = word[0..1]
    second = word[2..(word.length - 1)]
    return second + first + 'ay'
  else
    first = word[0]
    second = word[1..(word.length - 1)]
    return second + first + 'ay'
  end
end

def translate(words)
  word = words.split(" ")
  word.map! do |i|
    rework(i)
  end 
  word.join(" ")
end
