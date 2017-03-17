require ('minitest/autorun')
require ('minitest/pride')
require_relative('../lib/guest')
require_relative ('../lib/room')
require_relative ('../lib/song')
require_relative ('../lib/karaoke_bar')

class GuestTest < Minitest::Test

  def setup
    @caroline = Guest.new("Caroline", 100)
    @codeclan_caraoke = KaraokeBar.new("CodeClan Caraoke", 10)
    @song_list = [@you_can_call_me_al, @mr_brownstone]
    @small_room = Room.new(20, @song_list)
    @a_guest = Guest.new("Simon", 5)
    @another_guest = Guest.new("Elsa", 30)
  end

  def test_guest_has_name
    assert_equal("Caroline", @caroline.name)
  end

  def test_guest_has_cash
    assert_equal(100, @caroline.cash)
  end

  def test_does_guest_have_enough_money
    assert_equal(true, @caroline.has_enough_money(@codeclan_caraoke))
  end

  def test_favourite_song_playing
  end



end
