def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(x)
  total = 0
  for i in x
    total += i
  end
  total
end

def multiply(x)
  total = 1
  for i in x
    total *= i
  end
  total
end

def power(x, y)
  x ** y
end

def factorial(x)
  if x == 0
    return 1
  else
    total = 1
    while x > 0
      total *= x
      x -= 1
    end
  end
  total
end
