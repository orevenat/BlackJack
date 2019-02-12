require_relative 'card'

class Deck

  attr_reader :cards

  def initialize
    cards = Card::RANKS.zip(Card::VALUES).product(Card::SUITS).map(&:flatten)
    @cards = cards.map do |rank, value, suit|
      Card.new(rank, suit, value)
    end
  end

  def take_card
    card = cards.sample
    cards.delete(card)
    card
  end

  private

  attr_writer :cards
end
