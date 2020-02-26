class HiddenWord

  attr_accessor :word, :displayed_letters

    def initialize(word, displayed_letters = [])
      @word               = word
      @displayed_letters  = displayed_letters
    end

    def displayed_letters_length()
      return @displayed_letters.length()
    end

    def add_asterisks()
      # make_word_an_array()
      for letter in @word.chars
        @displayed_letters.push("*")
      end
    end

    def get_displayed_letters_string()
      displayed_letters_clone = @displayed_letters
      @displayed_letters = ""

      displayed_letters_clone.each do |asterisk|
        @displayed_letters.concat(asterisk)
      end

    end

    def get_displayed_letters_array()
      return @displayed_letters
    end

end
