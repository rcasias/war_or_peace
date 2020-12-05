require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'


def turn_test_exists
  turn = Turn.new(player1, player2)
  player1 = Player.new("Clarisa", deck1)
  player2 = Player.new("Aurora", deck2)
  deck = Deck.new(cards)
  assert_instance_of Turn, turn
end

def test_two_players_exist
  player1 = Player.new("Clarisa", deck1)
  player2 = Player.new("Aurora", deck2)

  assert_equal player1, turn.player1
  assert_equal player2, turn.player2
end

# def test_player1_turn
#   player
# end
#
# def tesxt_player2_turn
# end

def spoils_of_war
  assert_equal [], turn.spoils_of_war
end
# spoils?
#
# basic?
#
# can_be_war
#
# winner
