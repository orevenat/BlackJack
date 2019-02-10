class Player
  attr_reader :cards, :account, :name, :points

  def initialize(name, account)
    @name = name
    @account = account
  end

  def add_card(card)
    cards << card
  end

  private

  attr_writer :cards, :account, :points
end
