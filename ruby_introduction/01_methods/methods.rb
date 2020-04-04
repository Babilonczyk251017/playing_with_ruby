
# hello method

def hello (message)
  puts "The massage: #{message}"
end

# using hello method

hello "Hiii there :P !"
hello ""

# hello method with default value

def hello_default (message = "none") # if no argument is passed to the method
  puts "The massage: #{message}"
end

# using hello_default method
hello_default "Heyoo"

hello_default

# method that returns a value

def hello_return (message)
  return message
end

def hello_no_return (message)
  if message == ""
        return "Someone send you a blank message :(("
  end
  message
  # "I will change the returned value"
end

puts hello_return("I'm a returned argument")

puts hello_no_return("I'm a second returned argument")

puts hello_no_return("")

# Something like this is also possible:

puts hello_no_return("Johnny") + hello_no_return(" Bravo")

# We can call methods from other methods like this:

def parent # parent has two children (twins)
  2
end

def child # each of children is 12 years old
  12
end

def multiply (arg)
  2 * arg
end

def total_children_age
  # parent * child
  multiply(child)
end

puts parent * child
puts total_children_age
puts "42".reverse