module Validate
  def Validate.tip
    puts "You may forgot to use one of special character in your password."
  end
end

class User
  def password(p)
    if p.include?("!") || p.include?("@") || p.include?("#") || p.include?("%") || p.include?("&")
      "Your password is correct"
    else
      Validate.tip
    end
  end
end

u1 = User.new
puts u1.password("123456")
puts u1.password("1234!56")