require('minitest/autorun')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test

  def setup
    @songs = [
      song1 = Song.new("Wilson (Expensive Mistakes)", "Fall Out Boy"),
      song2 = Song.new("Books from Boxes", "Maximo Park"),
      song3 = Song.new("Paper Wings", "Rise Against")
    ]

    @song4 = Song.new("Kitchen Sink", "Twenty One Pilots")

    @guests = [
      @guest1 = Guest.new("Marta", 24, 50, "Wilson (Expensive Mistakes)"),
      @guest2 = Guest.new("Andrew", 25, 50, "Books from Boxes"),
      @guest3 = Guest.new("Craig", 17, 50, "Paper Wings"),
      @guest4 = Guest.new("David", 25, 50, "Bedshaped")
    ]

    @room1 = Room.new(1, 4, 10, @songs)

  end

  def test_room_getters
    assert_equal(1, @room1.number)
    assert_equal(4, @room1.capacity)
    assert_equal(10, @room1.price_per_person)
    assert_equal(3, @room1.songs.count)
    # p @room1
  end

  def test_check_in_guest
    @room1.check_in_guest(@guests)
    assert_equal(4, @room1.guests_in_room.count)
  end

  def test_check_out_guest
    @room1.check_out_guest()
    assert_equal(0, @room1.guests_in_room.count)
  end

  def test_add_song
    @room1.add_song(@song4)
    assert_equal(4, @room1.songs.count)
    # p @songs
  end

end
