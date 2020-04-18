require 'observer'

# Wzorzec obserwatora jest wzorcem pozwalającym na
# poinformowanie zainteresowanych, że zaszła jakaś
# interesująca nas zmiana w obserwowanym obiekcie

class KryptoWaluta
  include Observable # zamieszczamy moduł Observable (klasa ta bedzie obserwowana)
  attr_reader :symbol
  attr_accessor :cena

  def initialize(symbol)
    @symbol = symbol
  end

  def cena=(nowa_cena)
    @cena = nowa_cena
    changed #informuje obiekty o zmianie ceny
    notify_observers(self, nowa_cena)
  end

end

#Klasa ktora bd zajmowac sie obserwacja ceny Kryptowaluty
class CenaNotifier
  def initialize(limit)
    @limit = limit
  end

  def update(coin, new_value)
    if (new_value < @limit)
      puts "Nowa cena! Mining #{coin.symbol} stalo sie wlasnie oplacalne ^^"
    end
  end
end

coin = KryptoWaluta.new("BTC")

# Dodajemy obiekty obserujacae

coin.add_observer(CenaNotifier.new(30))

coin.cena = 100
coin.cena = 34
coin.cena = 23
coin.cena = 33
coin.cena = 67
coin.cena = 121
