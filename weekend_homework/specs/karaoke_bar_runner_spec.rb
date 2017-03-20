require ('minitest/autorun')
require ('minitest/emoji')
require_relative ('../lib/room')
require_relative ('../lib/guest')
require_relative ('../lib/song')
require_relative ('../lib/karaoke_bar')
require_relative ('../lib/karaoke_bar_runner')

class KaraokeBarRunnerTest
    def setup
      @small_room = Room.new(20, @song_list)
      @a_guest = Guest.new("Simon", 10)
      @another_guest = Guest.new("Elsa", 30)
      @wichita_lineman = Song.new("Glen Campbell", "Wichita Lineman")
      @you_can_call_me_al = Song.new("Paul Simon", "You Can Call Me Al")
      @mr_brownstone = Song.new("Guns N Roses", "Mr Brownstone")
      @codeclan_caraoke = KaraokeBar.new("CodeClan Caraoke", 10)
    end
end
