

#Simple recursion example
def recurse(r)
  return r if r >10;
  puts r
  r+= 1
  recurse(r)
end

puts(recurse 1)

#Fibonacci recursion (finding nth fibonacci number)
def Fibonacci(f)
  return f if f < 2
  if f >= 2
    Fibonacci(f - 1) + Fibonacci(f - 2)
  end
end

fibo = Fibonacci(18)
puts "Fibo: #{fibo}"