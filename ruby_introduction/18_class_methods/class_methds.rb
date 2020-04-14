#Class methods are somethong that will always be true for our class

class Pokemon

  def self.dangerous?
    true
  end

  def self.ugly?
    false
  end

end

# We call a method on the class not n the instance of the class
puts Pokemon.dangerous? # it will print true
puts Pokemon.ugly? # it will print false

p = Pokemon.new
puts p.class.dangerous?
puts p.class.ugly?