require_relative 'card'
class Deck

  def initialize
    setup_cards
  end

  def setup_cards
    Card::SUITS.each do |suit|
      Card::VALUES.each do |value|
        cards << Card.new(value, suit)
      end
    end
  end

  def cards
    @cards ||= []
  end

  def shuffle
    cards.shuffle!
  end

  def draw
    shuffle
    cards.pop
  end

end
