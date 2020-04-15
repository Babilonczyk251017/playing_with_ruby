require 'csv'

class User
  attr_accessor :name, :lastname, :id
  attr_reader :fn

  def initialize(name, lastname, id = rand(1000..99999))
    @name = name
    @lastname = lastname
    @id = id
    @fn = "user#{id}.csv"
  end

  def self.fn(id)
    "user#{id}.csv"
  end

  def is_valid?
    (!name.nil? && name.length > 0 ) &&
        (!lastname.nil? && lastname.length > 0 )
  end

  def create
    fn = User.fn id

    if !File.exist?(fn)
      save
    else
      puts "File already exists"
    end
  end

  def save
    save_file = CSV.open(fn, "w") do |csv|
      csv << [name, lastname]
    end
    puts "user#{id}.scv file was saved"
    return save_file.nil? #if save_file is not nill return it
  end

  def self.read(id)
    fn = User.fn id
    if File.exist?(fn)
        File.open(fn, 'r') do |f|
          record = CSV.parse(f.read)[0]
          return User.new(record[0],record[1], id)
        end
    else
      puts "File does not exist"
    end
  end

  def update
    if File.exist?(fn)
      save
    else
      puts "File does not exist"
      return false
    end
  end
end

u1 = User.new("Johnny" ,"Bravo")

u1.save

p User.read u1.id

u1.update