require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'

class DeckTest < Minitest::Test
  def setup
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    cards = [card1, card2, card3]

    return cards
  end

  def test_it_exists

    cards = setup()

    deck = Deck.new(cards)

    assert_instance_of Deck, deck
  end

  def test_cards_type
    skip
    cards = setup()

    deck = Deck.new(cards)

    deck.cards.each do | card |
      assert_instance_of Card, card
    end
  end

  def test_rank_of_card
    skip
    cards = setup()

    deck = Deck.new(cards)

    assert_equal 12, deck.rank_of_card_at(0)
  end

  def test_high_ranking_cards
    skip
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    assert_equal card1.rank >= 11, true
    assert_equal card2.rank >= 11, false
    assert_equal card3.rank >= 11, true
  end

  def test_percent_high_ranking
    skip
    cards = setup()
    high_card = []

    if card1.rank >= 11
      high_card << card1
    end
    if card2.rank >= 11
      high_card << card2
    end
    if card3.rank >= 11
      high_card << card3
    end

    assert_equal (high_card / cards.length) , (2/3)
  end

  def test_remove_card
    skip
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    cards.pop
    cards = [card2, card3]
    assert_equal cards.length, 2
  end

  def test_add_card
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    cards = [card1, card2, card3]

    card4 = Card.new(:club, 'Ace', 14)
    cards << card4

    assert_equal cards.length, 4
  end

end
