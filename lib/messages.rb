class Messages
  START_MESSAGE = 'Здравствуйте, это игра BlackJack. Введите ваше имя'.freeze
  CARDS = 'Карты'.freeze
  POINTS_QUANTITY = 'Количество очков'.freeze
  PLAY_AGAIN = 'Сыграем еще? 1 для продолжения. любой другой символ для выхода'.freeze
  PLAYER_NAME = 'Имя игрока:'.freeze

  def self.set_name
    puts START_MESSAGE
    gets.chomp
  end

  def self.show_stats(player)
    puts "#{PLAYER_NAME} #{player.name}"
    puts "#{CARDS} #{player.show_cards.join(' ')}"
    puts "#{POINTS_QUANTITY} #{player.points}"
  end

  def self.play_again?
    puts PLAY_AGAIN.to_s
    gets.chomp == '1'
  end
end
