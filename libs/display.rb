# Display related functions
module Display
  def display_intro
    puts "\n Welcome to ruby Hangman Game!"
    puts "\n Press a key to continue..."
    gets
  end

  def display_game_view(input_span, lives)
    system('clear') || system('cls')
    puts "Player Lives: #{lives}\n"
    puts "\n\n\n"
    word = ''
    input_span.each do |cell|
      word.concat("-#{cell}")
    end
    puts word
    puts "\n\n\n"
    puts 'Type a letter: '
  end

end
