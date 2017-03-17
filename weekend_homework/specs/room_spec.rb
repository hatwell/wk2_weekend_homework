require ('minitest/autorun')
require ('minitest/emoji')
require ('pry')
require_relative ('../lib/room')
require_relative ('../lib/guest')
require_relative ('../lib/song')
require_relative ('../lib/karaoke_bar')

class RoomTest < Minitest::Test
  def setup
    @codeclan_caraoke = KaraokeBar.new("CodeClan Caraoke", 10)
    @song_list = [@you_can_call_me_al, @mr_brownstone]
    @small_room = Room.new(20, @song_list)
    @a_guest = Guest.new("Simon", 5)
    @another_guest = Guest.new("Elsa", 30)
    @wichita_lineman = Song.new("Glen Campbell", "Wichita Lineman")
    @you_can_call_me_al = Song.new("Paul Simon", "You Can Call Me Al")
    @mr_brownstone = Song.new("Guns N Roses", "Mr Brownstone")

  end

  def test_room_capacity
    assert_equal(20, @small_room.capacity)
  end

  def test_check_guest_in
    @small_room.check_in_guest(@a_guest)
    assert_equal([@a_guest], @small_room.guests)
  end

  def test_check_guest_out
    @small_room.guests = [@a_guest, @another_guest]
    @small_room.check_out_guest(@a_guest)
    assert_equal(1, @small_room.guests.length)
  end

  def test_add_song_to_room
    @small_room.add_song_to_room(@wichita_lineman)
    assert_equal(@wichita_lineman, @small_room.songs.last)
  end

  def test_room_capacity_check
    assert_equal(true, @small_room.check_room_under_capacity)
  end

  # def test_does_guest_have_enough_money
  #   assert_equal(false, @small_room.does_guest_have_enough_money(@a_guest, @codeclan_caraoke.entry_fee))
  # end




end
