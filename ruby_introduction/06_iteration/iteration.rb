tab = [1,2,3,4,5,6,7,8,9,10]

tab.each {|el| puts el}

def puts_el(el)
  yield el
end

for i in tab
  puts_el(i) { |j| puts j}
end

def two_yield #yield a block of code twice
  yield
  yield
end

two_yield  {puts "two_yield"}

tab.each do |el|
  puts 2 * el
end

#iteration over the range

(1..5).each do |el|
  puts el
end

1.upto(5).each do |el|
  puts el
end

5.downto(1).each do |el|
  puts el
end

5.times do |i|
  puts i
end

#iteration using steps

(0..10).step(2) do |el|
  puts el
end

#Iterating a Hash

animal = {
    animal: 'cat',
    sound: 'mow!'
}

animal.each do |k,v|
  puts "Key: #{k}  Value: #{v}"
end