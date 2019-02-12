class Card
  RANKS = %w[2 3 4 5 6 7 8 9 10 В Д К Т].freeze
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11].freeze
  SUITS = ['+', '<3', '^', '<>'].freeze

  attr_reader :name, :value, :small_value

  def initialize(rank, type, value)
    @name = "#{rank}#{type}"
    @value = value
    @small_value = 1 if value == 11
  end

  private

  attr_writer :name, :value, :small_value
end
