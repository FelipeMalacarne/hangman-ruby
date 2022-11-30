require_relative 'game'
require_relative 'display'

puts 'Let\'s play Hangman in console?'

def start_game
  game = Hangman.new
  game.play
  # replay
end

def replay
  puts 'Do you want to play another game? [y / n]'
  input = gets.chomp.downcase
  case input
  when 'y'
    start_game
  when 'n'
    puts 'Thanks for playing!! :D'
  else
    puts 'Invalid input'
  end
end

start_game
