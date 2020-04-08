

#Simple recursion example

def recurse(r)
  return r if r >10;
  puts r
  r+= 1
  recurse(r)
end

puts(recurse 1)