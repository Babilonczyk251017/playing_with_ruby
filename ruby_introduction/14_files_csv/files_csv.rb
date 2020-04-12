#csv - stand for a coma separated value
require 'csv'

if File.exist?"data.csv"
  csv_file = CSV.read('data.csv')
end

p csv_file

puts csv_file.first.first
puts csv_file[1][4]


str = "Picatchu,Mewtwo,Charisard"
parsed_str = CSV.parse(str)
p str
p parsed_str


if File.exist?"data.csv"
  CSV.open("data.csv", "a+") do |csv|
    csv << ['Picatchu','Mewtwo','Charisard']
  end
end


