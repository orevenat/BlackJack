require_relative 'account'

class Player
  attr_reader :cards, :account, :name, :points

  def initialize(name, money)
    @name = name
    @account = Account.new(money)
  end

  def add_card(card)
    cards << card
  end

  private

  attr_writer :cards, :account, :points
end
