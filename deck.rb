require_relative 'card'
class Deck

  def initialize
    setup_cards
  end

  def setup_cards
    ["hearts", "spades", "clubs", "diamonds"].each do |suit|
      (1..13).each do |value|
        cards << Card.new(value, suit)
      end
    end
  end

  def cards
    @cards ||= []
  end

  def shuffle
    cards.shuffle
  end

  def draw
    shuffle
    cards.pop
  end

end
