require 'minitest/autorun'
require 'minitest/pride'
require './lib/vendor'
require './lib/item'
require './lib/market'

class MarketTest < Minitest::Test

  def test_it_exists
    market = Market.new("South Pearl Street Farmers Market")
    assert_instance_of Market, market
  end

  def test_it_has_a_name_and_no_vendors
    market = Market.new("South Pearl Street Farmers Market")
    assert_equal "South Pearl Street Farmers Market", market.name
    assert_equal [], market.vendors
  end

end
