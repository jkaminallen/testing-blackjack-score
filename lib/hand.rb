require_relative 'deck'

class Hand
  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    card_1 = @cards[0]
    card_2 = @cards[1]
    card_1.chop!
    card_2.chop!

    if card_1 == "J" || card_1 == "Q" || card_1 == "K"
      card_1 = 10
    end

    if card_2 == "J" || card_2 == "Q" || card_2 == "K"
      card_2 = 10
    end

    card_1 = card_1.to_i if card_1 != "A"
    card_2 = card_2.to_i if card_2 != "A"

    if card_1 == "A" && card_2 == "A"
      card_1 = 1
      card_2 = 11
    end

    if card_1 == "A" || card_2 == "A"
      card_1 = 11 if card_2 != "A"
      card_2 = 11 if card_1 != "A"
    end

    card_1 + card_2
  end
end

deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)
hand.calculate_hand # Get this working properly
