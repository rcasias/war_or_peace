class TurnBasic
  attr_reader :player1
              :player2
              :spoils_of_war
  def initialize (player1, player2, spoils_of_war)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = spoils_of_war
  end
end

class TurnWar
  attr_reader :player1
              :player2
              :spoils_of_war
  def initialize (player1, player2, spoils_of_war)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = spoils_of_war
  end
end

class Turn_Mutually_assured_destruction
  attr_reader :player1
              :player2
              :spoils_of_war
  def initialize (player1, player2, spoils_of_war)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = spoils_of_war
  end
end
