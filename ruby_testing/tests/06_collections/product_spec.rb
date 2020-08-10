require_relative 'product'

RSpec.describe Product do

  #this before block will only run once

  before(:all) do
    @product1 = Product.new({id: 1, name: "Apples", quantity:13, price: 1})
  end

  #Getter methods are working?
  #
  it "respod to id" do
    expect(@product1).to respond_to(:id)
  end

  it "respod to name" do
    expect(@product1).to respond_to(:name)
  end

  it "respod to quantity" do
    expect(@product1).to respond_to(:quantity)
  end

  it "respod to price" do
    expect(@product1).to respond_to(:price)
  end

  it "returns correct attributes" do
    expect(@product1.id).to eq(1)
    expect(@product1.name).to eq("Apples")
    expect(@product1.quantity).to eq(13)
    expect(@product1.price).to eq(1)
  end

  it "returns list of all products" do
    expect(Product.all).to eq([@product1])
  end

  it "returns list of names of all products" do
    expect(Product.names).to eq([@product1.name])
  end

  it "returns list of products, that were sold" do
    #Create product with quantity eq 0
    product2 = Product.new({id: 2, name: "Oranges", quantity:26, price: 4.6})
    product3 = Product.new({id: 3, name: "Bananas", quantity:0, price: 2})

    #If quantity is eq 0, product needs to be restocked

    expect(Product.sold_out).to eq([product3])
  end

  it "should return the total quantity of products in inventory" do
    #Create product with quantity eq 0
    expect(Product.stock_quantity).to eq(39) # 13 + 26 + 0
  end
end