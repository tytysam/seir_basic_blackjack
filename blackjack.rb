class Player
  attr_accessor :name, :bankroll, :hand

  def initialize name, bankroll
    @name = name
    @bankroll = bankroll
    @hand = []
  end

end

humanPlayer = Player.new "Tyler", 100
computerPlayer = Player.new "The House", 10000

# p humanPlayer.bankroll
# p computerPlayer.bankroll

deck = []

class PlayingCard
  attr_reader :value

  def initialize value
    @value = value
  end

end
