require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

class TurnTest < Minitest::Test
  def test_turn_exists
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    cards1 = [card1, card3, card5]
    cards2 = [card2, card4, card6]
    deck1 = Deck.new(cards1)
    deck2 = Deck.new(cards2)
    player1 = Player.new("Clarisa", deck1)
    player2 = Player.new("Aurora", deck2)
    turn = Turn.new(player1, player2)
    assert_instance_of Turn, turn
  end
  #
  def test_two_players_exist
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    cards1 = [card1, card3, card5]
    cards2 = [card2, card4, card6]
    deck1 = Deck.new(cards1)
    deck2 = Deck.new(cards2)
    player1 = Player.new("Megan", deck1)
    player2 = Player.new("Aurora", deck2)
    turn = Turn.new(player1, player2)
    assert_instance_of Player, turn.player1
    assert_instance_of Player, turn.player2
  end
  #
  #
  def test_spoils_of_war
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    cards1 = [card1, card3, card5]
    cards2 = [card2, card4, card6]
    deck1 = Deck.new(cards1)
    deck2 = Deck.new(cards2)
    player1 = Player.new("Clarisa", deck1)
    player2 = Player.new("Aurora", deck2)
    turn = Turn.new(player1, player2)
    assert_equal [], turn.spoils_of_war
  end

  def test_type_basic
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    cards1 = [card1, card3, card5]
    cards2 = [card2, card4, card6]
    deck1 = Deck.new(cards1)
    deck2 = Deck.new(cards2)
    player1 = Player.new("Clarisa", deck1)
    player2 = Player.new("Aurora", deck2)
    turn = Turn.new(player1, player2)
    assert_equal :basic, turn.type
  end
  def test_type_war
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, 'Queen', 12)
    card3 = Card.new(:heart, 'Ace', 14)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    cards1 = [card1, card3, card5]
    cards2 = [card2, card4, card6]
    deck1 = Deck.new(cards1)
    deck2 = Deck.new(cards2)
    player1 = Player.new("Clarisa", deck1)
    player2 = Player.new("Aurora", deck2)
    turn = Turn.new(player1, player2)
    assert_equal :war, turn.type
  end
  def test_type_mutually_assured_destruction
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, 'Queen', 12)
    card3 = Card.new(:heart, 'Ace', 14)
    card4 = Card.new(:diamond, '8', 8)
    card5 = Card.new(:heart, 'Jack', 11)
    card6 = Card.new(:diamond, 'Jack', 11)
    cards1 = [card1, card3, card5]
    cards2 = [card2, card4, card6]
    deck1 = Deck.new(cards1)
    deck2 = Deck.new(cards2)
    player1 = Player.new("Clarisa", deck1)
    player2 = Player.new("Aurora", deck2)
    turn = Turn.new(player1, player2)
    assert_equal :mutually_assured_destruction, turn.type
  end

  def test_winner
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    card4 = Card.new(:diamond, '8', 8)
    card5 = Card.new(:heart, 'Jack', 11)
    card6 = Card.new(:diamond, 'Jack', 11)
    cards1 = [card1, card3, card5]
    cards2 = [card2, card4, card6]
    deck1 = Deck.new(cards1)
    deck2 = Deck.new(cards2)
    player1 = Player.new("Megan", deck1)
    player2 = Player.new("Aurora", deck2)
    turn = Turn.new(player1, player2)
    assert_equal "Megan", turn.winner.name
  end
end
