class Person
  def initialize(name="", lastname="")
    @name = name
    @lastname = lastname
  end

  def speak
    puts "I am #{@name} #{@lastname}"
  end
end

class Clone
  def initialize(name="", lastname="")
    @name = name
    @lastname = lastname
  end

  def getName
    @name
  end

  def getLastname
    @lastname
  end

  def speak
    puts "I am #{@name} #{@lastname}"
  end

  #if two objects has the same name they will be returning true
  def ==(other) # overriding the existing method
    ( @name == other.getName ) && ( @lastname == other.getLastname )
  end
end

p1 = Person.new("Johhny", "Bravo")
puts p1.object_id
puts p1.class
p1.speak


puts String.class
puts String.superclass
puts String.superclass.superclass

p2 = p1
puts p1 == p2 #Returns true because this is the same object

p3 = Person.new("Johhny", "Bravo")
puts p1 == p3 #Returns false because they are different objects of the same class

p4 = Clone.new("Johhny", "Bravo")
p5 = Clone.new("Johhny", "Bravo")

puts p4 == p5 #Returns false because they are different objects of the same class

puts p5.respond_to?(:speak)


def has_it?(object, method_name)
  puts "#{method_name}: #{object.respond_to?(method_name)}"
end

has_it?(Integer,:speak)
has_it?(p4,:speak)