class Deck
  attr_reader :cards

  def initialize()
    @cards = []
  end

  def add_card_to_deck(card)
    @cards << card
  end
end
k
