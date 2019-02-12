class Card
  RANKS = %w[2 3 4 5 6 7 8 9 10 В Д К Т].freeze
  SUITS = ['+', '<3', '^', '<>'].freeze

  attr_reader :name, :value, :small_value

  def initialize(rank, type, value)
    @name = "#{rank}#{type}"
    @value = value
    @small_value = 1 if value == 11
  end

  def self.cost(rank)
    return 11 if rank == 'Т'
    return 10 if %w[В Д K].include?(rank)

    rank.to_i
  end

  private

  attr_writer :name, :value, :small_value
end
