require_relative 'account'

class Player
  attr_reader :cards, :account, :name, :points

  def initialize(name, money)
    @name = name
    @account = Account.new(money)
    @cards = []
    @points = 0
  end

  def add_card(card)
    cards << card
    value = points > 11 && card.small_value ? card.small_value : card.value
    self.points += value
  end

  def show_cards
    cards.map(&:name)
  end

  def clean_cards
    self.cards = []
    self.points = 0
  end

  def money
    account.money
  end

  def take_money(money)
    account.take_money(money)
  end

  def put_money(money)
    account.put_money(money)
  end

  private

  attr_writer :cards, :account, :points
end
