

class Product
  @@products = Array.new # = []

  attr_accessor :id, :name, :quantity, :price

  #Initialize default attributes
  def initialize(data={})
    @id = data[:id] || 0
    @name = data[:name] || "test_product"
    @quantity = data[:quantity] || 0
    @price = data[:price] || 0

    @@products.push self # << self
  end

  def self.all
    @@products
  end

  def self.names
    #res = Array.new
    # @@products.each do |p|
    #   res.push p.name
    # end
    #res

    @@products.map(&:name) #@@products.map { |p|  p.name }
  end

  def self.sold_out
    #res = Array.new
    #@@products.each do |p|
    #  if( p.quantity.equal? 0)
    #      res << p
    #  end
    #end
    #res

    #@@products.reject { |p| p.quantity > 0}

    @@products.select { |p| p.quantity.equal? 0}
  end

  def self.stock_quantity
    sum = 0
    @@products.each do |p|
      sum += p.quantity
    end
    sum
  end

end