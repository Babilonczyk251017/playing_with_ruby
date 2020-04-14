require 'csv'

class User
  attr_accessor :name, :lastname

  def is_valid?
    (!name.nil? && name.length > 0 ) &&
    (!lastname.nil? && lastname.length > 0 )
  end

  def to_csv
    CSV.generate do |csv|
      csv << [name, lastname]
    end
  end
end

u1 = User.new
u1.name = "John"
u1.lastname = "Bravo"
puts u1.is_valid?

puts u1.to_csv