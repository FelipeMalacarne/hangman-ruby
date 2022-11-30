require_relative 'display'

# Hangman game logic
class Hangman
  include Display
  attr_reader :word, :input_span, :lives

  def initialize
    @word = random_word
    @input_span = Array.new(@word.length) = 
    @lives = 5
  end

  def random_word
    word = ''
    word = File.readlines('words.txt').sample until word.length >= 5 && word.length <= 12
    word
  end

  def play
    display_intro
    display_game_view(input_span, lives)
    turns
    conclusion
  end

  def turns
    until lives.zero?
      input = turn_input
      word.each_index_of do |char, index|
        char == input ? @input_span[index] = char : pass
      end
      break if @input_span == word

    end
  end

  def turn_input
    char = gets.chomp

    return char if char.length == 1 || letter?(char)

    puts 'Invalid Input'
    turn_input
  end

  def letter?(char)
    char.match?(/[[:alpha:]]/)
  end



end
