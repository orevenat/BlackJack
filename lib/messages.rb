class Messages
  START_MESSAGE = 'Здравствуйте, это игра BlackJack. Введите ваше имя'.freeze
  CARDS = 'Карты'.freeze
  POINTS_QUANTITY = 'Количество очков'.freeze
  PLAY_AGAIN = 'Сыграем еще? 1 для продолжения.'.freeze
  RESTART = 'Рестарт? 1 для перезагрузки'.freeze
  EXIT_BUTTONS = 'Любой другой символ для выхода'.freeze
  PLAYER_NAME = 'Имя игрока:'.freeze
  YOU_LOSE = 'Вы проиграли'.freeze
  TIE = 'Ничья'.freeze
  WIN = 'Вы победили'.freeze
  PLAYER_NOMONEY = 'Вы банкрот'.freeze
  DEALER_NOMONEY = 'Диллер банкрот'.freeze

  def self.set_name
    puts START_MESSAGE
    gets.chomp
  end

  def self.show_stats(player)
    puts '============================='
    puts "#{PLAYER_NAME} #{player.name}"
    puts "#{CARDS} #{player.show_cards.join(' ')}"
    puts "#{POINTS_QUANTITY} #{player.points}"
    puts "money: #{player.money}"
    puts ' '
  end

  def self.play_again?
    puts PLAY_AGAIN
    puts EXIT_BUTTONS
    gets.chomp == '1'
  end

  def self.restart?
    puts EXIT_BUTTONS
    gets.chomp == '1'
  end

  def self.you_lose
    puts YOU_LOSE
  end

  def self.tie
    puts TIE
  end

  def self.you_win
    puts WIN
  end

  def self.no_money
    puts PLAYER_NOMONEY
  end

  def self.dealer_no_money
    puts DEALER_NOMONEY
  end
end
