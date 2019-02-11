class Card
  attr_reader :name, :value, :small_value

  def initialize(rank, type, value, small_value = false)
    @name = "#{rank}#{type}"
    @value = value
    @small_value = small_value if small_value != false
  end

  private

  attr_writer :name, :value, :small_value
end
