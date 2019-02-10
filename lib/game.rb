require_relative 'player'
require_relative 'messages'
require_relative 'deck'

class Game

  attr_reader :player, :dealer, :deck

  def initialize
    @deck = Deck.new
    @dealer = Player.new(:Dealer, 100)
  end

  def init
    player = Messages.take_name
    self.player = Player.new(player, 100)
    player.add_card(deck.take_card)
    dealer.add_card(deck.take_card)
    player.add_card(deck.take_card)
    dealer.add_card(deck.take_card)
  end

  def start
    init
  end

  private

  attr_writer :player, :dealer, :deck
end
