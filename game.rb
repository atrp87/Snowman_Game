class Game

  attr_accessor :player, :hidden_word, :guessed_letters

    def initialize(player, hidden_word, guessed_letters = [])
      @player           = player
      @hidden_word      = hidden_word
      @guessed_letters  = guessed_letters
    end

    def player_guesses_letter(letter)
      # @hidden_word.word.chars # array with "snails" ( chars )
      # @hidden_word.get_displayed_letters_array # array with "******"

      found_index = ""
      @hidden_word.word.chars.each_with_index do |character, index|
        if character == letter
          found_index = index
        end
      end

      @hidden_word.displayed_letters[found_index] = letter
    end

end
