require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../lib/room')
require_relative ('../lib/guest')
require_relative ('../lib/song')

class RoomTest < Minitest::test
  def setup
    @pop_room = Room.new()
  end
end
