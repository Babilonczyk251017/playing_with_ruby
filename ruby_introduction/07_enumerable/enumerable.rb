# The Enumerable mixin provides collection classes with several traversal and
# searching methods, and with the ability to sort. The class must provide a method
# each, which yields successive members of the collection.
#
# Link to a very rich documentation with examples
# See: https://ruby-doc.org/core-2.7.1/Enumerable.html

tab=["cat","piggy","fish","doggy"]

array_enumerator = tab.each
puts array_enumerator #returns enumerator type

array_enumerator.each_with_index do |i,j|
  puts "The index is: #{j}, item: #{i}"
end

tab.each_with_index do |i,j|
  puts "The index is: #{j}, item: #{i}"
end