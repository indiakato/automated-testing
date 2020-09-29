
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

    if value == 1
      return "Ace of #{suit.to_s}"
    elsif value == 11
      return "Jack of #{suit.to_s}"
    elsif value == 12
      return "Queen of #{suit.to_s}"
    elsif value == 13
      return "King of #{suit.to_s}"
    else
      return "#{value} of #{suit.to_s}"
    end
  end

end
