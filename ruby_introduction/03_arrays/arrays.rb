
#Indexed collection of data = array

a = [1, "aaa",123, 13, 2.2, "sda"]

puts a[0]

def array_info(arg , i)
  "Array length: #{arg.length}  |  #{i}'nd element: #{arg[i-1]}"
end

puts array_info(a,2)

# You can also create Array via new method:

b = Array.new(5 , rand(10) )  # Array.new(no of elements, default value)

p a  # p is a method for visualizing the data
p b

c = Array.new([10,10,10,10])

p c

# 3rd method of creating an array

d = %(a 666 god 3 good cat 96) # it will return a string
e = %w(a 666 god 3 good cat 96) # it will return array of strings (words)

p d
p e

puts e[0] # return an "a"

# 4th method by using a split method

f = "Ruby is awesome!".split(" ")
p f

g = "Ruby is awesome! Isn't it?".split("!")
p g

#We can manipulate arrays using different methods:

p g.reverse

p g + [g[1]] # + doesn't pernamently change the array

p g

p g.concat(['<3']) # .concat() pernamently changes the array

p g

#Ways of retrieving and adding data from arrays

str = "I will never give up!"
tab = str.split
p tab

a = tab.pop # returns last element from the array and deletes it

puts a

p tab  # "up!" is no longer part of the array

tab.push(a)

p tab # "up!" is again part of the array

puts tab.first

puts tab.last

#Convenience methods

tab.delete("I") # deletes all "I" occurrences in the array

p tab

p tab.take(3) # creates a new array from the first 3 elements

p tab.fetch(3)