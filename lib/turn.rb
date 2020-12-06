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

#start turn with basic turn type
#place two cards (one from each player's hand into pile_cards aka spoils_of_war)
  # def pile_cards
  #   @spoils_of_war << @cards
  # end

#code descirbes a basic turn type- if cards are not equal send them to pile_cards
  # def type_basic
  #   if player1.deck.rank_of_card_at(0) != player2.rank_of_card_at(0)
  #     @pile_cards << player1.rank_of_card_at(0) && player2.rank_of_card_at(0)
  #   end
  # end


  # def type_war
  #   if player1.rank_of_card_at(0) == player2.rank_of_card_at(0) &&
  #      player1.rank_of_card_at(2) != player2.rank_of_card_at(2)
  #       @pile_cards << player1.rank_of_card_at(2) && player2.rank_of_card_at(2)
  #   end
  # end
  #
  # def type_mutually_assured_destruction
  #   if
  #     player1.rank_of_card_at(0) && player1.rank_of_card_at(2) ==
  #     player2.rank_of_card_at(0) && player2.rank_of_card_at(2)
  #       return no_winner #remove all cards
  #   end
  # end


  # def winner_basic
  #   if player1.rank_of_card_at(0) > player1.rank_of_card_at(0)
  #     return player1_winner
  #   else player1.rank_of_card_at(0) < player2.rank_of_card_at(0)
  #     return player2_winner
  # end

  # def winner_war
  #   if player1.rank_of_card_at(2) > player1.rank_of_card_at(2)
  #     return player1_winner
  #   else player1.rank_of_card_at(2) < player2.rank_of_card_at(2)
  #     return player2_winner
  end
