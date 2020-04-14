require 'csv'

class User
  attr_accessor :name, :lastname, :id

  def is_valid?
    (!name.nil? && name.length > 0 ) &&
        (!lastname.nil? && lastname.length > 0 )
  end

  def save_to_csv

    save_file = CSV.open("user#{id}.csv", "w") do |csv|
      csv << [name, lastname]
    end

    return save_file.nil? #if save_file is not nill return it
  end
end

u1 = User.new
u1.name = "John"
u1.lastname = "Bravo"
u1.id = 123849

puts u1.is_valid?
puts u1.save_to_csv