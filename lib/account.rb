class Account
  attr_reader :money

  def initialize(money)
    @money = money
  end

  def take_money(value)
    raise 'No money' if money < value

    self.money -= - value
    value
  end

  def put_money(value)
    self.money += value
  end

  private

  attr_writer :money
end
