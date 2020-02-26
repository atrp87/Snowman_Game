class Game

  attr_accessor :player, :hidden_word, :guessed_letters

    def initialize(player, hidden_word, guessed_letters = [])
      @player           = player
      @hidden_word      = hidden_word
      @guessed_letters  = guessed_letters
    end


    def is_letter_in_word(letter)
      found_letter = @hidden_word.word.chars.find() do |character|
        character == letter
      end

      if found_letter != nil
        return true
      else
        return false
      end
    end

    def player_guesses_letter(letter)
      # @hidden_word.word.chars # array with "snails" ( chars )
      # @hidden_word.get_displayed_letters_array # array with "******"

      @guessed_letters.push(letter)

      if is_letter_in_word(letter) == true
      found_index = ""
        @hidden_word.word.chars.each_with_index do |character, index|
          if character == letter
            found_index = index
          end
        end

        @hidden_word.displayed_letters[found_index] = letter
      end
    end

    def game_result()
      result = @hidden_word.displayed_letters.find() do |letter|
        letter == "*"
      end

      if result == nil
        return "won"
      else
        return "lost"
      end

    end

end
