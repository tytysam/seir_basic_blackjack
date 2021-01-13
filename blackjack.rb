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

  def draw_cards
    # Randomly "draw" two cards (.sample(2)???) from the_deck
    # Add both cards to our hand
  end

end

humanPlayer = Player.new "Tyler", 100
computerPlayer = Player.new "The House", 10000

# p humanPlayer.sum_cards
# p computerPlayer.sum_cards

the_deck = []

class PlayingCard
  attr_reader :value

  def initialize value
    @value = value
    # @face = face
    # @suit = suit
  end

end

# SUITS ==> clubs (♣) | diamonds (♦) | hearts (♥) | spades (♠)

# CLUBS (♣) ==================================================

clubs2 = PlayingCard.new 2
the_deck << clubs2

clubs3 = PlayingCard.new 3
the_deck << clubs3

clubs4 = PlayingCard.new 4
the_deck << clubs4

clubs5 = PlayingCard.new 5
the_deck << clubs5

clubs6 = PlayingCard.new 6
the_deck << clubs6

clubs7 = PlayingCard.new 7
the_deck << clubs7

clubs8 = PlayingCard.new 8
the_deck << clubs8

clubs9 = PlayingCard.new 9
the_deck << clubs9

clubs10 = PlayingCard.new 10
the_deck << clubs10

clubs_jack = PlayingCard.new 10
the_deck << clubs_jack

clubs_queen = PlayingCard.new 10
the_deck << clubs_queen

clubs_king = PlayingCard.new 10
the_deck << clubs_king

clubs_ace = PlayingCard.new 11
the_deck << clubs_ace


# DIAMONDS (♦) ===============================================

diamonds2 = PlayingCard.new 2
the_deck << diamonds2

diamonds3 = PlayingCard.new 3
the_deck << diamonds3

diamonds4 = PlayingCard.new 4
the_deck << diamonds4

diamonds5 = PlayingCard.new 5
the_deck << diamonds5

diamonds6 = PlayingCard.new 6
the_deck << diamonds6

diamonds7 = PlayingCard.new 7
the_deck << diamonds7

diamonds8 = PlayingCard.new 8
the_deck << diamonds8

diamonds9 = PlayingCard.new 9
the_deck << diamonds9

diamonds10 = PlayingCard.new 10
the_deck <<diamonds10

diamonds_jack = PlayingCard.new 10
the_deck << diamonds_jack

diamonds_queen = PlayingCard.new 10
the_deck << diamonds_queen

diamonds_king = PlayingCard.new 10
the_deck << diamonds_king

diamonds_ace = PlayingCard.new 11
the_deck << diamonds_ace



# HEARTS (♥) =================================================

hearts2 = PlayingCard.new 2
the_deck << hearts2

hearts3 = PlayingCard.new 3
the_deck << hearts3

hearts4 = PlayingCard.new 4
the_deck << hearts4

hearts5 = PlayingCard.new 5
the_deck << hearts5

hearts6 = PlayingCard.new 6
the_deck << hearts6

hearts7 = PlayingCard.new 7
the_deck << hearts7

hearts8 = PlayingCard.new 8
the_deck << hearts8

hearts9 = PlayingCard.new 9
the_deck << hearts9

hearts10 = PlayingCard.new 10
the_deck <<hearts10

hearts_jack = PlayingCard.new 10
the_deck << hearts_jack

hearts_queen = PlayingCard.new 10
the_deck << hearts_queen

hearts_king = PlayingCard.new 10
the_deck << hearts_king

hearts_ace = PlayingCard.new 11
the_deck << hearts_ace


# SPADES (♠) =================================================

spades2 = PlayingCard.new 2
the_deck << spades2

spades3 = PlayingCard.new 3
the_deck << spades3

spades4 = PlayingCard.new 4
the_deck << spades4

spades5 = PlayingCard.new 5
the_deck << spades5

spades6 = PlayingCard.new 6
the_deck << spades6

spades7 = PlayingCard.new 7
the_deck << spades7

spades8 = PlayingCard.new 8
the_deck << spades8

spades9 = PlayingCard.new 9
the_deck << spades9

spades10 = PlayingCard.new 10
the_deck <<spades10

spades_jack = PlayingCard.new 10
the_deck << spades_jack

spades_queen = PlayingCard.new 10
the_deck << spades_queen

spades_king = PlayingCard.new 10
the_deck << spades_king

spades_ace = PlayingCard.new 11
the_deck <<spades_ace

p the_deck

# p the_deck.sample.value

# TO-DO =================================================
# Research how to shuffle the values in the array — the cards should be shuffled before playing
# Create a console game that lets a player choose their name and then starts the game
# Make sure the console is printing informative messages to allow the player to know what is happening and what to do next 
# Each player gets two random cards
# The player with the larger sum of their cards wins the round
# By default, a round is worth 10 dollars (human wins ==> 10 dollars subtracted from the house and added to the player   |  the_house wins ==> 10 dollars subtracted from the player and added to the_house)
# If there is a tie, let the player know there is a tie and no bankrolls are affected
# The game ends after one round