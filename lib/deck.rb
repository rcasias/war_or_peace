require './card'

class Deck
  attr_reader :cards

  def initialize()
    @cards = []
  end

  def add_card_to_deck(card)
    @cards << card
  end

  def rank_of_cards_at()
  end

  def high_ranking_cards()
  end

  def percent_high_ranking_cards()
  end

  def remove_card()
  end

  def add_card()
  end

end

deck = Deck.new

deck.add_card_to_deck(card1)
deck.add_card_to_deck(card2)
deck.add_card_to_deck(card3)
deck.add_card_to_deck(card4)
