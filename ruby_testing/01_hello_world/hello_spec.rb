
require_relative 'hello'

RSpec.describe Hello do

  # Hello class should have a method that returns 'Hello World!'
  it "should say 'Hello World!'" do
    text = Hello.say_hello
    expect(text).to eq("Hello World!")
  end

end