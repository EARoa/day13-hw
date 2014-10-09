
class CurrencyConverter

 attr_accessor :value, :dollars
  @@value = {
    :euro => 0.79,
    :yen => 108.48,
    :pounds => 0.62,
    :gold => 0.00082
  }

  puts "$15 equal:"
  puts "\n"

  def initialize(how_many, from_what)
    if from_what == :dollar

      @dollars = how_many
    end
  end

  def euros
    @dollars * @@value[:euro]
  end

def gold
  @dollars * @@value[:gold]
end


  def pounds
    @dollars * @@value[:pounds]
  end


def yen
  @dollars * @@value[:yen]
end

end





fifteen_dollars = CurrencyConverter.new(15, :dollar)
p "Euros -> #{fifteen_dollars.euros}"
p "Yen -> #{fifteen_dollars.yen}"
p "Pounds -> #{fifteen_dollars.pounds}"
p "Gold -> #{fifteen_dollars.gold}"
