
class Room

  attr_reader :capacity
  attr_accessor :guest_count, :guests, :songs

  def initialize(capacity, songs)
    @capacity = capacity
    @guest_count = 0
    @guests = []
    @songs = songs
    @full_message = "Sorry, the room is full"
  end

  def check_room_under_capacity
    @guests.length + 1 <= @capacity
  end

  def check_in_guest(guest)
    check_room_under_capacity ? @guests << guest : @full_message
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def add_song_to_room(song)
    @songs << song
  end


end
