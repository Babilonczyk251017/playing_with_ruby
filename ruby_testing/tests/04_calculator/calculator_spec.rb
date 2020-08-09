require_relative 'calculator'

RSpec.describe Calculator do

  before do
    @num_1 = 100
    @num_2 = 2
  end

  context "Adding two numbers together" do
    it "should return the sum of two numbers" do
      res = Calculator.add(@num_1, @num_2)
      expect(res).to eq(102)
    end
  end

  context "Subtracting two numbers together" do
    it "should return the difference of two numbers" do
      res = Calculator.sub(@num_1, @num_2)
      expect(res).to eq(98)
    end
  end

  context "Multiplying two numbers together" do
    it "should return the product of two numbers" do
      res = Calculator.mul(@num_1, @num_2)
      expect(res).to eq(200)
    end
  end

  context "Dividing two numbers together" do
    it "should return how many times first number can be divided into the second number" do
      res = Calculator.div(@num_2, @num_1)
      expect(res).to eq(0.02)
    end
  end

  context "Raising a number to the n-th power" do
    it "should return the result of multiplying first number by itself by n times (second number)" do
      res = Calculator.rise(@num_1, @num_2)
      expect(res).to eq(10000)
    end
  end

end
