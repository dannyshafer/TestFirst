def echo(x) #repeats back
  x
end

def shout(x) #makes upcase
  x.upcase
end

def repeat(x, n = 2) #says twice unless otherwise specified
  ((x + " ") * n).strip
end

def start_of_word(x, n = 0)
  if n == 0
    x[0]
  else
    x[(0..n-1)]
  end
end

def first_word(x)
  x.split(" ").first
end

def titleize(x)
  x.capitalize!
  title = x.split(" ")
  title.each do |i|
    i.capitalize! unless ["the", "and", "over"].include? i
  end
  title.join(" ")
end