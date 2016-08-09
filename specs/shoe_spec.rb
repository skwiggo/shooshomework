require('minitest/autorun')
require('minitest/rg')
require_relative('../models/shoe')

class TestShoe < Minitest::Test

  def setup
    @shoe = Shoe.new({"first_name" => "James", "last_name" => "Hardy", "address" => "32 Albion Road, Edinburgh, EH7 5QW", "shoe_size" => 7, "quantity" => 2})
  end

  def test_first_name()
    assert_equal('James', @shoe.first_name)
  end

  def test_last_name()
    assert_equal('Hardy', @shoe.last_name)
  end

  def test_address()
    assert_equal("32 Albion Road, Edinburgh, EH7 5QW", @shoe.address)
  end

  def test_concat_name()
    assert_equal('James Hardy', @shoe.concat_name)
  end

  def test_has_shoe_size()
    assert_equal(7, @shoe.shoe_size())
  end
  
  def test_has_quantity()
    assert_equal(2, @shoe.quantity())
  end

  def test_total()
    assert_equal(100, @shoe.total())
  end
end