require './deck'

class Card
  attr_reader :suit,
              :value,
              :rank
  def initialize(suit, value, rank)
    @suit = suit
    @value = value
    @rank = rank
  end
end

card1 = Card.new(:heart, "Ace", 13)
card2 = Card.new(:diamond, "Ace", 13)
card3 = Card.new(:club, "Ace", 13)
card4 = Card.new(:spade, "Ace", 13)

card5 = Card.new(:heart, "Queen", 12)
card6 = Card.new(:diamond, "Queen", 12)
card7 = Card.new(:club, "Queen", 12)
card8 = Card.new(:spade, "Queen", 12)

card9 = Card.new(:heart, "Jack", 11)
card10 = Card.new(:diamond, "Jack", 11)
card11 = Card.new(:club, "Jack", 11)
card12 = Card.new(:spade, "Jack", 11)

card9 = Card.new(:heart, "10", 10)
card10 = Card.new(:diamond, "10", 10)
card11 = Card.new(:club, "10", 10)
card12 = Card.new(:spade, "10", 10)

card13 = Card.new(:heart, "9", 9)
card14 = Card.new(:diamond, "9", 9)
card15 = Card.new(:club, "9", 9)
card16 = Card.new(:spade, "9", 9)

card17 = Card.new(:heart, "8", 8)
card18 = Card.new(:diamond, "8", 8)
card19 = Card.new(:club, "8", 8)
card20 = Card.new(:spade, "8", 8)

card21 = Card.new(:heart, "7", 7)
card22 = Card.new(:diamond, "7", 7)
card23 = Card.new(:club, "7", 7)
card24 = Card.new(:spade, "7", 7)

card25 = Card.new(:heart, "6", 6)
card26 = Card.new(:diamond, "6", 6)
card27 = Card.new(:club, "6", 6)
card28 = Card.new(:spade, "6", 6)

card29 = Card.new(:heart, "6", 6)
card30 = Card.new(:diamond, "6", 6)
card31 = Card.new(:club, "6", 6)
card32 = Card.new(:spade, "6", 6)

card33 = Card.new(:heart, "6", 6)
card34 = Card.new(:diamond, "6", 6)
card35 = Card.new(:club, "6", 6)
card36 = Card.new(:spade, "6", 6)

card37 = Card.new(:heart, "5", 5)
card38 = Card.new(:diamond, "5", 5)
card39 = Card.new(:club, "5", 5)
card40 = Card.new(:spade, "5", 5)

card41 = Card.new(:heart, "4", 4)
card42 = Card.new(:diamond, "4", 4)
card43 = Card.new(:club, "4", 4)
card44 = Card.new(:spade, "4", 4)

card45 = Card.new(:heart, "3", 3)
card46 = Card.new(:diamond, "3", 3)
card47 = Card.new(:club, "3", 3)
card48 = Card.new(:spade, "3", 3)

card49 = Card.new(:heart, "2", 2)
card50 = Card.new(:diamond, "2", 2)
card51 = Card.new(:club, "2", 2)
card52 = Card.new(:spade, "2", 2)
