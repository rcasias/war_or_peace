require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'


class PlayerTest < Minitest::Test

  def setup

    @card1 = Card.new(:diamond, 'Queen', 12)
    @card2 = Card.new(:spade, '3', 3)
    @card3 = Card.new(:heart, 'Ace', 14)

    @cards = [@card1, @card2, @card3]
    @deck = Deck.new(@cards)

    @player = Player.new("Clarisa", @deck)

  end

  def test_player_exists
    player1 = Player.new("Clarisa", @deck)
    assert_instance_of Player, @player
  end

  def test_has_lost?
    @card1 = Card.new(:diamond, 'Queen', 12)
    @card2 = Card.new(:spade, '3', 3)
    @card3 = Card.new(:heart, 'Ace', 14)

    @cards = [@card1, @card2, @card3]
    @deck = Deck.new(@cards)
    # if @cards.length > 0
    #   return false
    # end
    assert_equal @player.has_lost?, false
  end

  def test_remove_card_from_deck
    @card1 = Card.new(:diamond, 'Queen', 12)
    @card2 = Card.new(:spade, '3', 3)
    @card3 = Card.new(:heart, 'Ace', 14)

    @cards = [@card1, @card2, @card3]
    @deck = Deck.new(@cards)

    @cards.pop
    @cards = [@card2, @card3]
    assert_equal @cards.length, 2
  end

  end
