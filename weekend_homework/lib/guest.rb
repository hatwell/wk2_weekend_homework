class Guest
  attr_accessor :cash, :has_enough_money
  attr_reader :name, :favourite_song


  def initialize(name, cash)
    @name = name
    @cash = cash
    @favourite_song = favourite_song
    @has_enough_money = false
  end

  def has_enough_money(bar)
    @cash >= bar.entry_fee
  end

  def favourite_song_playing?(room)
    puts "Woop woop it's my favourite song!" if room.current_song == @favourite_song
  end

end
