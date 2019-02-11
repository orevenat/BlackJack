class Messages
  START_MESSAGE = 'Здравствуйте, это игра BlackJack. Введите ваше имя'.freeze
  CARDS = 'Карты'.freeze
  POINTS_QUANTITY = 'Количество очков'.freeze
  PLAY_AGAIN = 'Сыграем еще? 1 для продолжения.'.freeze
  PLAY_AGAIN_MORE = 'Любой другой символ для выхода'.freeze
  PLAYER_NAME = 'Имя игрока:'.freeze
  YOU_LOSE = 'Вы проиграли'.freeze
  TIE = 'Ничья'.freeze
  WIN = 'Вы победили'.freeze

  def self.set_name
    puts START_MESSAGE
    gets.chomp
  end

  def self.show_stats(player)
    puts '============================='
    puts "#{PLAYER_NAME} #{player.name}"
    puts "#{CARDS} #{player.show_cards.join(' ')}"
    puts "#{POINTS_QUANTITY} #{player.points}"
    puts ' '
  end

  def self.play_again?
    puts PLAY_AGAIN
    puts PLAY_AGAIN_MORE
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
end
