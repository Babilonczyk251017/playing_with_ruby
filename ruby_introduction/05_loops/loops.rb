# Infinite Loop
#loop do
#  puts "elo"
#end


# While Loop
a = 10
while a > 5 do
  a = a - 1
  puts "yo"
end

# Begin While Loop

begin
  puts "Whats the answer?"
  a = gets.chomp
  if a == "Apple"
    puts "Correct"
  else
    puts "Wrong"
  end
end while a != "Apple"


# Converted Begin While Loop to Loop XD

loop do
  puts "Whats the answer?"
  a = gets.chomp

  if a == "Apple"
    puts "Correct"
    break
  else
    puts "Wrong"
  end
end

# Using break if and next

j = 0
loop do
  j = j + 1
  if (j % 2) == 1
    next
  end
  break if j > 5
  puts j
end

#Until Loop
k = 0
until k == 10 do
  k += 1
  puts k
end

#Mini while loop

i = 0
i += 1 while i < 10 # will increment i up to 10
puts i if i == 10
puts i unless i  < 10

#For loop

tab = [
    {
        name: "John"
    },
    {
        name: "Anne"
    },
    {
        name: "Gabi"
    },
    {
        name: "Mike"
    },
]

for i in tab
  puts i[:name]
end