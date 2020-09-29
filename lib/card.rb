
# card.rb

class Card
  attr_reader :value, :suit

  SUIT = [:hearts, :spades, :diamonds, :clubs]
  VALUE = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

  def initialize(value, suit)

    if SUIT.include?(suit)
      @suit = suit
    else
      raise ArgumentError, "Invalid suit"
    end

    if VALUE.include?(value)
      @value = value
    else
      raise ArgumentError, "Invalid value"
    end

  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end

end
