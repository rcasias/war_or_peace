require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'


def create_standard_deck
  standard_deck = []
  standard_deck << Card.new(:heart, "Ace", 13)
  standard_deck << Card.new(:diamond, "Ace", 13)
  standard_deck << Card.new(:club, "Ace", 13)
  standard_deck << Card.new(:spade, "Ace", 13)

  standard_deck << Card.new(:heart, "Queen", 12)
  standard_deck << Card.new(:diamond, "Queen", 12)
  standard_deck << Card.new(:club, "Queen", 12)
  standard_deck << Card.new(:spade, "Queen", 12)

  standard_deck << Card.new(:heart, "Jack", 11)
  standard_deck << Card.new(:diamond, "Jack", 11)
  standard_deck << Card.new(:club, "Jack", 11)
  standard_deck << Card.new(:spade, "Jack", 11)

  standard_deck << Card.new(:heart, "10", 10)
  standard_deck << Card.new(:diamond, "10", 10)
  standard_deck << Card.new(:club, "10", 10)
  standard_deck << Card.new(:spade, "10", 10)

  standard_deck << Card.new(:heart, "9", 9)
  standard_deck << Card.new(:diamond, "9", 9)
  standard_deck << Card.new(:club, "9", 9)
  standard_deck << Card.new(:spade, "9", 9)

  standard_deck << Card.new(:heart, "8", 8)
  standard_deck << Card.new(:diamond, "8", 8)
  standard_deck << Card.new(:club, "8", 8)
  standard_deck << Card.new(:spade, "8", 8)

  standard_deck << Card.new(:heart, "7", 7)
  standard_deck << Card.new(:diamond, "7", 7)
  standard_deck << Card.new(:club, "7", 7)
  standard_deck << Card.new(:spade, "7", 7)

  standard_deck << Card.new(:heart, "6", 6)
  standard_deck << Card.new(:diamond, "6", 6)
  standard_deck << Card.new(:club, "6", 6)
  standard_deck << Card.new(:spade, "6", 6)

  standard_deck << Card.new(:heart, "6", 6)
  standard_deck << Card.new(:diamond, "6", 6)
  standard_deck << Card.new(:club, "6", 6)
  standard_deck << Card.new(:spade, "6", 6)

  standard_deck << Card.new(:heart, "5", 5)
  standard_deck << Card.new(:diamond, "5", 5)
  standard_deck << Card.new(:club, "5", 5)
  standard_deck << Card.new(:spade, "5", 5)

  standard_deck << Card.new(:heart, "4", 4)
  standard_deck << Card.new(:diamond, "4", 4)
  standard_deck << Card.new(:club, "4", 4)
  standard_deck << Card.new(:spade, "4", 4)

  standard_deck << Card.new(:heart, "3", 3)
  standard_deck << Card.new(:diamond, "3", 3)
  standard_deck << Card.new(:club, "3", 3)
  standard_deck << Card.new(:spade, "3", 3)

  standard_deck << Card.new(:heart, "2", 2)
  standard_deck << Card.new(:diamond, "2", 2)
  standard_deck << Card.new(:club, "2", 2)
  standard_deck << Card.new(:spade, "2", 2)
  return standard_deck
end

standard_deck = create_standard_deck
p standard_deck.length

shuffled_deck = standard_deck.shuffle
p shuffled_deck

# puts ""
# puts "> "
# height = $stdin.gets.chomp.to_i
