require 'minitest/autorun'
require 'minitest/pride'
require './currency'


class CurrencyConverterTest < MiniTest::Test

  attr_reader :fifteen_dollars
  
  @@fifteen_dollars = CurrencyConverter.new(15,:dollar)

  def test_euros
    assert_in_delta 11.85, @@fifteen_dollars.euros, 0.01
  end

  def test_yen
    assert_equal 1627.2, @@fifteen_dollars.yen
  end

  def test_pounds
    assert_equal 9.3, @@fifteen_dollars.pounds
  end

  def test_gold
    assert_equal 0.0123, @@fifteen_dollars.gold
  end

end
