require ('minitest/autorun')
require ('minitest/emoji')
require_relative ('../lib/room')
require_relative ('../lib/guest')
require_relative ('../lib/song')

class SongTest < Minitest::Test
  def setup
    @you_can_call_me_al = Song.new("You Can Call Me Al", "Paul Simon")
  end

  def test_song_has_title
    assert_equal("You Can Call Me Al", @you_can_call_me_al.song_title)
  end

  def test_song_has_artist
    assert_equal("Paul Simon", @you_can_call_me_al.artist)
  end
end
