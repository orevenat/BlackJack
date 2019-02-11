require_relative 'player'
require_relative 'messages'
require_relative 'deck'

class Game
  attr_reader :player, :dealer, :deck, :actions

  def initialize
    @dealer = Player.new('Dealer', 100)
    player_name = Messages.set_name
    @player = Player.new(player_name, 100)
  end

  def restart
    self.dealer = Player.new('Delaer', 100)
    self.player = Player.new(player.name, 100)
    start
  end

  def init
    self.deck = Deck.new
    self.actions = [:take_card, :skip, :open_cards]
    player.clean_cards
    dealer.clean_cards
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
    game
  end

  def game
    player_step = Messages.actions(actions)
    actions.delete(player_step)
    method(player_step).call
    add_card(dealer) if dealer.points < 17
    open_cards if dealer.cards == 3 && player.cards == 3
    game
  end

  def take_card
    add_card(player)
    Messages.card_added(player)
  end

  def skip; end

  def add_card(player)
    player.add_card(deck.take_card)
  end

  def open_cards
    Messages.show_stats(dealer)
    if player.points > 21
      Messages.you_lose
      dealer.put_money(20)
    elsif player.points == dealer.points
      Messages.tie
      dealer.put_money(10)
      player.put_money(10)
    elsif dealer.points > 21
      Messages.you_win
      player.put_money(20)
    elsif 21 - player.points < 21 - dealer.points
      Messages.you_win
      player.put_money(20)
    else
      Messages.you_lose
      dealer.put_money(20)
    end

    if no_money?
      Messages.restart? ? restart : exit
    end

    Messages.play_again? ? start : exit
  end

  def no_money?
    if player.money.zero?
      Messages.no_money
      return true
    elsif dealer.money.zero?
      Messages.dealer_no_money
      return true
    end
    false
  end

  private

  attr_writer :player, :dealer, :deck, :actions
end
