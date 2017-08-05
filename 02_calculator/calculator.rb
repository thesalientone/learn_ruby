def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  ans = array.reduce(:+)
  if ans == nil
    return 0
  end
  return ans
end

def multiply(*args)
  args.reduce(:*)
end

def power(x, y)
  x ** y
end

def factorial(x)
  if x == 0
    return 1
  end

  (1..x).reduce(:*)

end
