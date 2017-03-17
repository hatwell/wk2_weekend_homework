require ('minitest/autorun')
require ('minitest/emoji')
require_relative ('../lib/room')
require_relative ('../lib/guest')
require_relative ('../lib/song')

class RoomTest < Minitest::Test
  def setup
    @pop_room = Room.new(20)
    @a_guest = Guest.new()
  end

  def test_room_capacity
    assert_equal(20, @pop_room.capacity)
  end

  def test_check_guest_in
    @pop_room.check_in_guest(@a_guest)
    assert_equal([@a_guest], @pop_room.guests)
  end



end
