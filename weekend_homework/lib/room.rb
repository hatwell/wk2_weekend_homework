
class Room

  attr_reader :capacity
  attr_accessor :guest_count, :guests, :songs

  def initialize(capacity)
    @capacity = capacity
    @guest_count = 0
    @guests = []
    @songs = songs
  end

  def check_in_guest(guest)
    @guests << guest
  end

  def add_song_to_room(artist, title)
    new_song = Song.new(artist, title)
    @songs << new_song
  end

end
