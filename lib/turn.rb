class Turn
  attr_reader :player1,
              :player2,
              :spoils_of_war
  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []

  end

  def type
    if @player1.deck.rank_of_card_at(0) != @player2.deck.rank_of_card_at(0)
      return :basic
    elsif @player1.deck.rank_of_card_at(2) != @player2.deck.rank_of_card_at(2)
      return :war
    else
      return :mutually_assured_destruction
    end
  end

  def winner
    if type == :basic
      if @player1.deck.rank_of_card_at(0) > @player2.deck.rank_of_card_at(0)
        return @player1
      else
        return @player2
      end
    elsif type == :war
      if @player1.deck.rank_of_card_at(2) > @player2.deck.rank_of_card_at(2)
        return @player1
      else
        return @player2
      end
    else
      return 'No Winner'
    end
  end

  def pile_cards
    if type == :basic
         @spoils_of_war << @player1.deck.cards[0]
         @player1.deck.cards.delete_at(0)
         @spoils_of_war << @player2.deck.cards[0]
         @player2.deck.cards.delete_at(0)
    elsif type == :war
         @spoils_of_war << @player1.deck.cards[0]
         @player1.deck.cards.delete_at(0)
         @spoils_of_war << @player1.deck.cards[1]
         @player1.deck.cards.delete_at(1)
         @spoils_of_war << @player1.deck.cards[2]
         @player1.deck.cards.delete_at(2)
         @spoils_of_war << @player2.deck.cards[0]
         @player2.deck.cards.delete_at(0)
         @spoils_of_war << @player2.deck.cards[1]
         @player2.deck.cards.delete_at(1)
         @spoils_of_war << @player2.deck.cards[2]
         @player2.deck.cards.delete_at(2)
    else type == :mutually_assured_destruction
         @player1.deck.cards.delete_at[0]
         @player1.deck.cards.delete_at[1]
         @player1.deck.cards.delete_at[2]
         @player2.deck.cards.delete_at[0]
         @player2.deck.cards.delete_at[1]
         @player2.deck.cards.delete_at[2]
    end
  end

  # def award_spoils(winner)
  #   @spoils_of_war.each do |cards|
  #     winner.deck.add_card(cards)
  #   end
  # end


end
