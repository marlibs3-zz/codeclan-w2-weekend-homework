class Room

attr_reader :number, :capacity, :price_per_person
attr_accessor :songs, :guests_in_room

  def initialize(number, capacity, price_per_person, songs)
    @number = number
    @capacity = capacity
    @price_per_person = price_per_person
    @songs = songs
    @guests_in_room = []
  end

  def check_in_guest(guests)
    for guest in guests
      @guests_in_room << guest
    end
    return guests_in_room
  end

  def check_out_guest()
    @guests_in_room.clear
  end

  def add_song(song)
    @songs << song
  end

end
