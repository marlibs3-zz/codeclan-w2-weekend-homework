require('minitest/autorun')
require_relative('../song.rb')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Wilson (Expensive Mistakes)", "Fall Out Boy")
    @song2 = Song.new("Books from Boxes", "Maximo Park")
    @song3 = Song.new("Paper Wings", "Rise Against")
  end

  def test_song_getters
    assert_equal("Wilson (Expensive Mistakes)", @song1.name)
    assert_equal("Fall Out Boy", @song1.artist)
  end

end
