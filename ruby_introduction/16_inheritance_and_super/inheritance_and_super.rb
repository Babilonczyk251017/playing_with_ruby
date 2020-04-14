class Programmer
  def coding
      puts "code code..."
  end

  def studying
    puts "What the duck is it supposed to mean?"
  end
end


class FrontDev < Programmer
  def specialize
    puts "I make websites look pretty an intuitive for mew users ^^"
  end

  def to_s
    "This is a Frontend Developer"
  end

  def coding
    super
    puts "js, node, etc"
  end
end


class BackDev < Programmer
  def specialize
    puts "I  build powerful tools!"
  end

  def to_s
    "This is a Backend Developer"
  end

  def coding
    super
    puts "ruby, java, cpp, etc"
  end
end

f = FrontDev.new
b = BackDev.new

puts f
puts b

f.specialize
b.specialize

f.coding

