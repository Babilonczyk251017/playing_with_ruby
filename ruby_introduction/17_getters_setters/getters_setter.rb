
class RpgCharacter


  #attr_accessor will generate all get and set methods for
  # specified fields in the memory f the program, so there is no need
  # to create them. Nice right?

  attr_accessor :name, :lastname

  def initialize(name="", lastname="")
    @name = name
    @lastname = lastname
  end

  def name
    @name
  end

  def lastname
    @lastname
  end

  def name=(name)
    @name = name
  end

  def lastname=(lastname)
    @lastname = lastname
  end

  def intro
    puts "I'm #{@name} #{@lastname} :P"
  end
end

ch = RpgCharacter.new("Johnny", "Bravo")
ch.intro

ch.name= "Micky"
ch.lastname= "Mouse"
ch.intro