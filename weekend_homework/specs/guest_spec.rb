require ('minitest/autorun')
require ('minitest/pride')
require_relative('../lib/guest')

class GuestTest < Minitest::Test

  def setup
    @caroline = Guest.new()
  end


end
