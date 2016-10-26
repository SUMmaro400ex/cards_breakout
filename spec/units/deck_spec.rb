require_relative '../../deck'

describe Deck do
  subject { described_class.new }

  context '#initialize' do

    it 'creates a deck' do
      expect(subject).to be_a Deck
    end
  end

  context '#cards' do

    it 'cannot change the deck' do
      expect { subject.cards = '' }.to raise_error NameError
    end

    it 'returns an array of cards'do
      expect(subject.cards).to be_an Array

      expect(subject.cards).to include(a_kind_of(Card))
    end

    it 'the deck has 52 cards' do
      expect(subject.cards.length).to eq 52
    end

    it 'correctly built a deck of cards' do
      expect(subject.cards.sample).to_not be subject.cards.sample

      expect(1..13).to cover(subject.cards.sample.value)

      expect(%w[Clubs Hearts Diamonds Spades]).to include(subject.cards.sample.suit)
    end
  end

  context '#draw' do

    it 'returns a card from the deck' do
      expect(subject.draw).to be_a Card
    end

    it 'removes the card from the deck' do
      deck = Deck.new
      deck.draw
      expect(deck.cards.length).to eq 51
    end
  end
end
