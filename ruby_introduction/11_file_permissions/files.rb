
#IO object - file descriptor for read only
myFileR = File.open "foo.txt", "r" #or rb

#IO object - file descriptor for write only
myFileW = File.open "foo.txt", "w" #or wb

#IO object - opens a file for update (reading and writing).
myFileU = File.open "foo.txt", "r+" #or rb+ or r+b

#IO object - truncate to zero length or create file for update.
myFileT = File.open "foo.txt", "w+" #or wb+ or r+b

# Each of the decriptors represent different file permissions
# (they are different objects)
puts myFileR
puts myFileW
puts myFileU
puts myFileT

# When creating a descriptor when a file doesn't exist, we have to
# use an append mode Ex:
myFileA = File.open "boo.txt", "a+"
puts myFileA

# Appen with more permissions will open or create file for update,
# writing at end-of-file.
myFileAU = File.open "boo.txt", "a+"
puts myFileAU


