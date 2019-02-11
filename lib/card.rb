class Card
  attr_reader :name, :value, :small_value

  def initialize(rank, type, value)
    @name = "#{rank}#{type}"
    @value = value
    @small_value = 1 if value == 11
  end

  private

  attr_writer :name, :value, :small_value
end
