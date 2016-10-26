class Card
  attr_reader :value, :suit
  def initialize(value, suit)
    @value = value.to_i
    @suit = suit.to_s.capitalize
    validate_arguments
  end

  def validate_arguments
    raise ArgumentError unless (1..13).include? value
    raise ArgumentError unless ["Hearts", "Spades", "Clubs", "Diamonds"].include? suit
  end

  def face
    case @value
    when 1
      "Ace"
    when 11
      "Jack"
    when 12
      "Queen"
    when 13
      "King"
    else
      @value
    end
  end

  def to_s
    "#{face} of #{suit}"
  end

end
