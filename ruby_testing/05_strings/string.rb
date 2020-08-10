
class SimpleString

  attr_accessor :sentance

  def initialize(input)
    @sentance = input
  end

  def contains_word? ( word )
    @sentance.include? ( word )
  end

  def contains_word_ignorecase? ( word )
    word = word.upcase
    @sentance.upcase.include? ( word )
  end
end