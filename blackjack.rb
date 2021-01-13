class Player
  attr_accessor :name, :bankroll, :hand

  def initialize name, bankroll
    @name = name
    @bankroll = bankroll
    @hand = [1,27]
  end

  def sum_cards
    self.hand.reduce(0) { |sum, num| sum + num }
  end

end

humanPlayer = Player.new "Tyler", 100
computerPlayer = Player.new "The House", 10000

# p humanPlayer.sum_cards
# p computerPlayer.sum_cards

deck = []

class PlayingCard
  attr_reader :value

  def initialize value
    @value = value
  end

end

# SUITS ==> clubs (♣) | diamonds (♦) | hearts (♥) | spades (♠)
