
#Hash is a collection of keys and its values

a = {} # empty hash
p a

b = Hash.new # doesn't need a specific size line an array. It can start empty
p b

# You can't duplicate keys!, but values can be duplicated :P

c = {
      1 => "pizza",
      2 => "opel",
      "car" => "mazda",
      3 => "opel"
    } # key => value

p c.keys
p c.values

p c["house"] # will return a nil
p c[1] # 1 is a key
p c["car"] # "car" is also a key

me = {
    "name" => "Johnny",
    "profession" => "Programmer",
    "stack" => ["c++","java", "ruby"]
}

puts me["stack"][0]
puts me["stack"][2]

# Array contaning hashes as elements

people = [
    {
        "name" => "Johnny",
        "profession" => "Programmer",
        "stack" => ["c++","java", "ruby"]
    },
    {
        "name" => "Mark",
        "profession" => "Manager",
        "stack" => ["scrum", "agile", "PM"]
    }
]

def is_programmer?(tab,i)
  if tab[i]["profession"] == "Programmer"
    puts "#{tab[i]["name"]} is a programmer."
  elsif tab[i]["profession"] == "Manager" then
    puts "No, #{tab[i]["name"]} is a PM."
  end
end

def print_stack(tab,i)

end

is_programmer?(people, 1)
is_programmer?(people, 0)

# Now lets focus on a new thing, called symbols :sth

student1 = {
    name: "Johny",
    surname: "Bravo"
}

student2 = {
    :name => "Johny",
    :surname => "Bravo"
}

p student1
p student2

student2[:name] = "Carl"
p student2

name = "name".to_sym
student1[name] = "Alice"
p student1

puts student1[:nameeee] # prints nothing (key doesn't exist)
puts student1.fetch(:name) # better approach then above (err appears when used a wrong key)

puts student1.has_key?(:name)
puts student2.fetch(:name) if student1.has_key?(:name)


p student2.index("Carl") # return us a key name

job = {
    job: "Programmer",
    motto: "none"
}

new =  student1.merge(job)

p new

new.delete(:motto)

p new

