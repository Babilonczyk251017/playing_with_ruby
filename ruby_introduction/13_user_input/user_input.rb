

puts "Hi, can you write sth for me?"
input = gets.chomp

File.open("message.txt", "a") do |file|
  file.write "#{input}\n"
end