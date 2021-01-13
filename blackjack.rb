class Player
  attr_accessor :name, :bankroll, :hand

  def initialize name, bankroll
    @name = name
    # *** to-do: LET THE PLAYER ENTER THEIR OWN NAME
    # @name = gets.chomp.to_s (???)
    @bankroll = bankroll
    @hand = [1,27]
  end

  def sum_cards
    self.hand.reduce(0) { |sum, num| sum + num }
  end

  def draw_cards
    # Randomly "draw" two cards (.sample(2)???) from the_deck
    # Add both cards to our hand

    # Could I use this method in tandem with a method on the Deck class...?
  end

end

human = Player.new "Tyler", 100
the_house = Player.new "The House", 10000


# ==================================================

class Deck
  attr_reader :deck

  def initialize
    @suits = ['clubs', 'diamonds', 'hearts', 'spades']
    @values = [2,3,4,5,6,7,8,9,10,10,10,10,11]
    @deck = []

    @suits.each do |suit|
      @values.each do |value|
        @deck << PlayingCard.new(suit, value)
      end
    end

    @deck
  end

  # *** To-Do: DEAL METHOD

  def shuffle 
    @deck = @deck.shuffle
  end
end


# ==================================================

# SUITS ==> clubs (♣) | diamonds (♦) | hearts (♥) | spades (♠)

class PlayingCard
  attr_reader :value

  def initialize suit, value
    @suit = suit
    @value = value
    # @face = face

  end

end



# TO-DO =================================================
# Research how to shuffle the values in the array — the cards should be shuffled before playing
# Create a console game that lets a player choose their name and then starts the game
# Make sure the console is printing informative messages to allow the player to know what is happening and what to do next 
# Each player gets two random cards
# The player with the larger sum of their cards wins the round
# By default, a round is worth 10 dollars (human wins ==> 10 dollars subtracted from the house and added to the player   |  the_house wins ==> 10 dollars subtracted from the player and added to the_house)
# If there is a tie, let the player know there is a tie and no bankrolls are affected
# The game ends after one round



# =================================================

class Game

  # Display welcome message... User input starts game
  # (ie, "Welcome to Blackjack - would you like to play? (Y/N)")

  # Check for enough money to play (make a minimum bet?)
  # Deal cards ( set a custom wager? or always wage 10? ==> pull wager from bankroll ==> ..? )

  # Evaluate sums ( sum players cards ==> sum the_house's cards ==> declare a winner? )

  # ~ ~ BONUS ~ ~
  # Evaluate result... if win ==> remove wager from the_house and add wager to bankroll... if lose ==> remove wager from bankroll and add wager to the_house
end



the_house = Deck.new
p the_house.deck