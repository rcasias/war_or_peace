require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'


def turn_test_exists
  turn = Turn.new(player1, player2)
  player1 = Player.new("Clarisa", deck1)
  player2 = Player.new("Aurora", deck2)
  deck = Deck.new(cards)
  card1 = Card.new(:diamond, 'Queen', 12)
  card2 = Card.new(:spade, '3', 3)
  card3 = Card.new(:heart, 'Ace', 14)

  cards = [card1, card2, card3]
  assert_instance_of Turn, turn
end

def test_two_players_exist
  player1 = Player.new("Clarisa", deck1)
  player2 = Player.new("Aurora", deck2)

  assert_equal player1, turn.player1
  assert_equal player2, turn.player2
end


def spoils_of_war
  turn = turn.new(player1, player2)
  player1 = Player.new("Clarisa", deck1)
  player2 = Player.new("Aurora", deck2)
  assert_equal [], turn.spoils_of_war
end

def test_type
  turn = Turn.new(player1, player2)
  player1 = Player.new("Clarisa", deck1)
  player2 = Player.new("Aurora", deck2)
  deck = Deck.new(cards)
  card1 = Card.new(:diamond, 'Queen', 12)
  card2 = Card.new(:spade, '3', 3)
  card3 = Card.new(:heart, 'Ace', 14)
  card4 = Card.new(:diamond, 'Jack', 11)
  card5 = Card.new(:heart, '8', 8)
  card6 = Card.new(:diamond, 'Queen', 12)
  assert_equal :basic, turn.basic
  assert_equal :war, turn.war
  assert_equal :mutually_assured_destruction, turn.mutually_assured_destruction
end
