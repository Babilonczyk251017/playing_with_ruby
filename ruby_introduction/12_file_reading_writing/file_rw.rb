

fi = File.open "friends.txt", "r+"

# puts fi.readline() #prints whole file content

puts fi.readline()

i = 1
fi.each do |l|
  puts l.chomp + " - end of line" if i < 10
  i += 1
end

#Each file descriptor should be closed (releasing a memory)
# in case of memory leakage:

fi.close

# In the example below there is no need to close a file,
# because when block of code ends, it will do it for us

File.open("friends.txt", "r") do |file|
  puts "\n -------  NEW FILE ------- \n\n"
  puts file.readline
end

#Now lets do some writing to the file
puts "\n -------  NEW FILE ------- \n\n"
(1..5).each do |i|
  File.open("new.txt", "a+") do |file|
    file.write "First time writing to txt in ruby!\n"
  end
end

File.open("new.txt", "r") do |file|
  puts file.read
end