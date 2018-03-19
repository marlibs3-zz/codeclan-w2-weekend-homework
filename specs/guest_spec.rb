require('minitest/autorun')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Marta", 24, 50, "Wilson (Expensive Mistakes)")
    @guest2 = Guest.new("Andrew", 25, 50, "Books from Boxes")
    @guest3 = Guest.new("Craig", 17, 50, "Paper Wings")
  end

  def test_guest_getters
    assert_equal("Marta", @guest1.name)
    assert_equal(24, @guest1.age)
    assert_equal(50, @guest1.wallet)
    assert_equal("Wilson (Expensive Mistakes)", @guest1.fav_song)
  end

end
