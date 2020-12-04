class Player
  attr_reader :name,
              :deck
  def initialize(name, deck)
    @name = name
    @deck = deck
  end

  def has_lost?
    deck.cards.empty?
  end

  def remove_card_from_deck
    return @cards.shift
  end


end
