require_relative 'card'

class Deck
  RANKS = %w[2 3 4 5 6 7 8 9 10 В Д К Т].freeze
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11].freeze
  SUITS = ['+', '<3', '^', '<>'].freeze

  attr_reader :cards

  def initialize
    cards = RANKS.zip(VALUES).product(SUITS)
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
