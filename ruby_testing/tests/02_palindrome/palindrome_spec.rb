require_relative 'palindrome'

RSpec.describe Word do

  #Test if Word Class method value returns a palindrome

  context "word is a palindrome" do
    it "should read the same forward and backward" do
      test_word = "level"
      result = Word.palindrome?(test_word)
      expect(result).to be_truthy
    end
  end

  context "word is not a palindrome" do
    it "should not read the same forward and backward" do
      test_word = "levels"
      result = Word.palindrome?(test_word)
      expect(result).to be_falsey
    end
  end


  it "should not worry about lowercase, uppercase characters" do
    test_word = "Level"
    result = Word.palindrome?(test_word)
    expect(result).to be_truthy
  end
end