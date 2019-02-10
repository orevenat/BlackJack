class Deck
  CARDS_LIST = [
    { name: '2+', value: 2 },
    { name: '2<3', value: 2 },
    { name: '2^', value: 2 },
    { name: '2<>', value: 2 },
    { name: '3+', value: 3 },
    { name: '3<3', value: 3 },
    { name: '3^', value: 3 },
    { name: '3<>', value: 3 },
    { name: '4+', value: 4 },
    { name: '4<3', value: 4 },
    { name: '4^', value: 4 },
    { name: '4<>', value: 4 },
    { name: '5+', value: 5 },
    { name: '5<3', value: 5 },
    { name: '5^', value: 5 },
    { name: '5<>', value: 5 },
    { name: '6+', value: 6 },
    { name: '6<3', value: 6 },
    { name: '6^', value: 6 },
    { name: '6<>', value: 6 },
    { name: '7+', value: 7 },
    { name: '7<3', value: 7 },
    { name: '7^', value: 7 },
    { name: '7<>', value: 7 },
    { name: '8+', value: 8 },
    { name: '8<3', value: 8 },
    { name: '8^', value: 8 },
    { name: '8<>', value: 8 },
    { name: '9+', value: 9 },
    { name: '9<3', value: 9 },
    { name: '9^', value: 9 },
    { name: '9<>', value: 9 },
    { name: '10+', value: 10 },
    { name: '10<3', value: 10 },
    { name: '10^', value: 10 },
    { name: '10<>', value: 10 },
    { name: 'В+', value: 10 },
    { name: 'В<3', value: 10 },
    { name: 'В^', value: 10 },
    { name: 'В<>', value: 10 },
    { name: 'Д+', value: 10 },
    { name: 'Д<3', value: 10 },
    { name: 'Д^', value: 10 },
    { name: 'Д<>', value: 10 },
    { name: 'К+', value: 10 },
    { name: 'К<3', value: 10 },
    { name: 'К^', value: 10 },
    { name: 'К<>', value: 10 },
    { name: 'Т+', value: 11, small_value: 1 },
    { name: 'Т<3', value: 11, small_value: 1 },
    { name: 'Т^', value: 11, small_value: 1 },
    { name: 'Т<>', value: 11, small_value: 1 }
  ].freeze

  attr_reader :cards

  def initialize
    @cards = CARDS_LIST.dup
  end

  def take_card
    card = cards.sample
    cards.delete(card)
    card
  end

  private

  attr_writer :cards
end
