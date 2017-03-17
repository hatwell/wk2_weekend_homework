require_relative('guest')
require_relative('karaoke_bar')
class Room

  attr_reader :capacity
  attr_accessor :guest_count, :guests, :songs

  def initialize(capacity, songs)
    @capacity = capacity
    @guests = []
    @songs = songs
    @full_message = "Sorry, the room is full"
  end

  def check_room_under_capacity
    @guests.length + 1 <= @capacity
  end

  # def does_guest_have_enough_money(guest, entry_fee)
  #   guest.cash >= entry_fee
  # end

  def check_in_guest(guest)
    check_room_under_capacity ? @guests << guest : @full_message
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def add_song_to_room(song)
    @songs << song
  end

  def play_song(songs)
    @current_song = @songs.sample
  end


end
