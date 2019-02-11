class Messages
  START_MESSAGE = 'Здравствуйте, это игра BlackJack. Введите ваше имя'.freeze
  CARDS = 'Карты'.freeze
  POINTS_QUANTITY = 'Количество очков'.freeze

  def self.set_name
    puts START_MESSAGE
    gets.chomp
  end

  def self.show_stats(player)
    puts "#{CARDS} #{player.show_cards.join(' ')}"
    puts "#{POINTS_QUANTITY} #{player.points}"
  end
end
