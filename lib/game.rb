require_relative 'player'
require_relative 'messages'
require_relative 'deck'

class Game
  attr_reader :player, :dealer, :deck

  def initialize
    @dealer = Player.new('Dealer', 100)
    player_name = Messages.set_name
    @player = Player.new(player_name, 100)
  end

  def init
    self.deck = Deck.new
    add_card(player)
    add_card(dealer)
    add_card(player)
    add_card(dealer)
    player.take_money(10)
    dealer.take_money(10)
  end

  def start
    init
    Messages.show_stats(player)
    debug
  end

  def add_card(player)
    player.add_card(deck.take_card)
  end

  def skip
  end

  def open_cards
  end

  def debug
    puts player.cards
    puts player.points
    puts '==='
    puts dealer.cards
    puts dealer.points
  end

  private

  attr_writer :player, :dealer, :deck
end
