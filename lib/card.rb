
# card.rb

class Card
  attr_reader :value, :suit

  SUIT = [:hearts, :spades, :diamonds, :clubs]

  def initialize(value, suit)

    unless SUIT.include?(suit)
      raise ArgumentError, "Invalid suit"
    end

    if value < 1 || value > 13
      raise ArgumentError, "Invalid value"
    end

    @value = value
    @suit = suit

  end

  def to_s

    face_cards = {
        1 => "Ace",
        11 => "Jack",
        12 => "Queen",
        13 => "King"
    }

    if face_cards[value].nil?
      face_cards[value] = value
    end

    return "#{face_cards[value]} of #{suit.to_s}"
  end

end
