class Messages
  START_MESSAGE = 'Здравствуйте, это игра BlackJack. Введите ваше имя'.freeze

  def self.set_name
    puts START_MESSAGE
    gets.chomp
  end
end
