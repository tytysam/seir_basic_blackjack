
# MVP =================================================
# Research how to shuffle the values in the array — the cards should be shuffled before playing
# Create a console game that lets a player choose their name and then starts the game
# Make sure the console is printing informative messages to allow the player to know what is happening and what to do next 
# Each player gets two random cards
# The player with the larger sum of their cards wins the round
# By default, a round is worth 10 dollars (human wins ==> 10 dollars subtracted from the house and added to the player   |  the_house wins ==> 10 dollars subtracted from the player and added to the_house)
# If there is a tie, let the player know there is a tie and no bankrolls are affected
# The game ends after one round

class Player
  attr_accessor :bankroll, :hand

  def initialize bankroll
    @bankroll = bankroll
    @hand = [1,2]
  end

  def sum_cards
    self.hand.reduce(0) { |sum, num| sum + num }
  end

  def draw_card
    # Randomly "draw" two cards (.sample(2)???) from the_deck
    # Add both cards to our hand

    self.hand.push @shuffled_deck.shift
    # Could I use this method in tandem with a method on the Deck class...?
  end

end

# the_human = Player.new 100
# the_house = Player.new 10000

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

  def deal (human, computer)
    2.times {human.draw_card}
    2.times {computer.draw_card}
  end

  def shuffle 
    @deck.shuffle
  end
end


# ==================================================

# SUITS ==> clubs (♣) | diamonds (♦) | hearts (♥) | spades (♠)

class PlayingCard
  attr_reader :suit, :value

  def initialize suit, value
    @suit = suit
    @value = value

    # @face = face
  end

end


# =================================================

class Game

  def initialize
    puts 'Welcome to Blackjack! Ready to play? (Y/N)'
    user_input = gets.to_s.chomp.downcase

    if user_input = 'y' || user_command == ''
      @deck = Deck.new
      @shuffled_deck = @deck.shuffle
      the_human = Player.new 100
      the_house = Player.new 10000
      
      player_name = ''
      puts 'Enter your name below:'
      player_name = gets.chomp
      puts "Welcome #{player_name}! Let's play Blackjack!"
      @deck.deal(the_human, the_house)
      puts the_human.hand
    end
    # *** to-do: the other half of this control flow...


    # *** to-do: include a method that will kick off the next phase of the game...
  end

  def check_score
    #add the values in each hand
    # store values as two individual variables
  end

  def check_winner human_score, house_score
    # use variables from above to determine a winner
  end
  

  # Display welcome message... User input starts game
  # (ie, "Welcome to Blackjack - would you like to play? (Y/N)")

  # Check for enough money to play (make a minimum bet?)
  # Deal cards ( set a custom wager? or always wage 10? ==> pull wager from bankroll ==> ..? )

  # Evaluate sums ( sum players cards ==> sum the_house's cards ==> declare a winner? )

  # ~ ~ BONUS ~ ~
  # Evaluate result... if win ==> remove wager from the_house and add wager to bankroll... if lose ==> remove wager from bankroll and add wager to the_house
end

game = Game.new