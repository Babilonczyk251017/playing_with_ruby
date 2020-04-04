
a = 10
b = 15

# Different ways of using conditionals in ruby

if a < b
  puts "a is lesser then b"
elsif  a > b then
  puts "a is greater then b"
end

puts  "a is equal 10" if a == 10

if b != a
  puts "b isn't equal to a"
end

unless b == a
  puts "b isn't equal to a"
end

puts "b isn't equal to a" unless b == a

z = 11
y = 10

if ( a != b ) && ( a == z || a == y )
  puts "true"
end

# Conditional by using ternary operator

a != b ? ( puts "Yup, they are not equal" ) : ( puts "Nope, they are equal ^^" )

str=""
str.empty? ? ( puts "This string is empty")  : ( puts "This string is not empty" )