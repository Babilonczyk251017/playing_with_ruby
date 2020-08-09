
class Word

  def self.palindrome? (message)
    val = message.upcase

    if val == val.reverse
      true
    else
      false
    end
  end

end