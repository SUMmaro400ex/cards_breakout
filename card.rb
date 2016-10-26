class Card
  attr_reader :value, :suit

  ## Constants
  SUITS = ["Hearts", "Spades", "Clubs", "Diamonds"]
  VALUES = (1..13)

  def initialize(value, suit)
    @value = value.to_i
    @suit = suit.to_s.capitalize
    validate_arguments
  end

  def validate_arguments
    raise ArgumentError unless VALUES.include?(value) && SUITS.include?(suit)
  end

  def face
    case value
    when 1
      "Ace"
    when 11
      "Jack"
    when 12
      "Queen"
    when 13
      "King"
    else
      value
    end
  end

  def to_s
    "#{face} of #{suit}"
  end

end
