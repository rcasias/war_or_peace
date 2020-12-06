require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/play_game'


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

  shuffled_deck = standard_deck.shuffle

  player_deck1 = []

  (0..25).each do |card|
    player_deck1 << shuffled_deck.delete_at(0)
  end
  return [shuffled_deck, player_deck1]
end

shuffled_arrays = create_standard_deck

player_deck1 = Deck.new(shuffled_arrays[0])
player_deck2 = Deck.new(shuffled_arrays[1])

player1 = Player.new("Megan", player_deck1)
player2 = Player.new("Aurora", player_deck2)


game = PlayGame.new(player1, player2)
game.start
