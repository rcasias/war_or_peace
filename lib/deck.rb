
class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(index)
    return @cards[index].rank
  end

  def high_ranking_cards()
    high_card = []
    @cards.each do |card|
      if card.rank >= 11
        high_card << card
      end
    end
    return high_card
  end

  def percent_high_ranking()
    # length of array (@cards) divided by the number of high ranking cards
    array_length = @cards.length.to_f
    high_ranking_cards_length = high_ranking_cards.length.to_f

    return (high_ranking_cards_length / array_length).round(4) * 100
  end

  def remove_card
    # removes the top card of the Deck
    # The 'Top' card is the first index of the cards array (@cards[0])
    return @cards.shift
  end

  def add_card(card)
    @cards << card
  end

end
