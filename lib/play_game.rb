class PlayGame
  attr_reader :player1,
              :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    p "Welcome to War! (or Peace) This game will be played with 52 cards."
    p "The players today are Megan and Aurora."
    p "Type 'GO' to start the game!"
    p "------------------------------------------------------------------"
    p "> "
    go = gets.chomp.upcase

    if go == 'GO'
      play
    end
  end


  def play

    counter = 0
    game = Turn.new(player1, player2)
    until player1.has_lost? || player2.has_lost?
      counter += 1
      if game.type == :basic
        winner = game.winner
        game.pile_cards
        game.award_spoils(winner)
        p "Turn #{counter}: #{winner.name} won 2 cards"
      elsif game.type == :war
        winner = game.winner
        game.pile_cards
        game.award_spoils(winner)
        p "Turn #{counter}: WAR - #{winner.name} won 6 cards"
      else
        game.pile_cards
        p "Turn #{counter}: *mutually assured destruction* 6 cards removed from play"
      end

      break if counter == 1000000
    end
    if player1.has_lost?
      p "*-*-*-* #{player2.name} has won the game! *-*-*-*"
    elsif player2.has_lost?
      p "*-*-*-* #{player1.name} has won the game! *-*-*-*"
    else
      p "---- DRAW ----"
      p "Player 1 Deck: #{player1.deck.cards.length}"
      p "Player 2 Deck: #{player2.deck.cards.length}"
    end
  end
end
