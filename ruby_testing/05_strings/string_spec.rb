require_relative 'string'

RSpec.describe SimpleString do

  context "String is case sensitive" do

    it "should output false if contained word isn't the same" do
        word = "Rails"
        sentance = "rails is an MVC framework written in Ruby"

        simple_string = SimpleString.new(sentance)
        result = simple_string.contains_word? word

        expect(result).to be_falsey
    end
  end

  context "String is case in-sensitive" do

    it "should output true if contained word is the same" do
      word = "Rails"
      sentance = "rails is an MVC framework written in Ruby"

      simple_string = SimpleString.new(sentance)
      result = simple_string.contains_word_ignorecase? word

      expect(result).to be_truthy
    end
  end

end