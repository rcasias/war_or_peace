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
    cards = setup()

    deck = Deck.new(cards)

    deck.cards.each do | card |
      assert_instance_of Card, card
    end
  end

  def test_rank_of_card
    cards = setup()

    deck = Deck.new(cards)

    assert_equal 12, deck.rank_of_card_at(0)
  end

end
