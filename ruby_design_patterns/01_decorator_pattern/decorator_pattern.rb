# Wzorzec dekoratora wykorzystywany jest wszedzie tam gdzie
# chcielibyśmy rozszerzyć możliwości jakieś klasy (jej funkcjonalnośc),
# jednak tylko w pewnym określonym kontekście.

class User
  attr_reader :name, :lastname, :email

  def initialize(name, lastname, email)
    @name = name
    @lastname = lastname
    @email = email
  end

end

# Przyjeło się, że obiekty ktore przechowuja dane, nie pwinny zajmowac
# sie logiką prezentacyjna. W tym celu tworzymu Dekoratora, a
# tym bardziej nie powinny generowac kod html.

# Dekorator poniekąd owija/dekoruje obiekt bazowy i te udekorowanie
# pozwala uzyc dodatkowych metod, bez dodawania ich do klasy bazowej

class UserDecorator < SimpleDelegator

  #Obiekty ktore dziedzicza po klasie SimpleDelegator, działają w
  # następujący sposób:
  # Jesli istnieje metoda którą wywołujemy, to zostanie wywołana,
  # jeśli jednak metoda ta nie istnieje to wywołanie jest delegowane
  # do klasy która jest udekorowana
  
  def my_email
    "<a href=\"mailto:#{email}\">#{name} #{lastname}</a>"
  end
end

u1 = User.new("Mark", "Twain", "awesome.twain@gmsil.com")

#W każdym dekoratore, jako argument do konstruktora podajemy
# klase która chcemy udekorowac
#
puts UserDecorator.new(u1).my_email
