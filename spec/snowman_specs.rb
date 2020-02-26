# require("pry-byebug")

require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

    require_relative('../game')
    require_relative('../player')
    require_relative('../hidden_word')

class SnowmanTest < MiniTest::Test

    def setup()
      @player1     = Player.new("Jeff", 6)
      @hidden_word = HiddenWord.new("snails")
      @game        = Game.new(@player1, @hidden_word)

      @hidden_word.add_asterisks()
    end

    def test_displayed_letters_length()
        @hidden_word.get_displayed_letters_string()
        assert_equal(6, @hidden_word.displayed_letters_length())
    end

    def test_player_guesses_letter()

        @game.player_guesses_letter("a")
        @hidden_word.get_displayed_letters_string()
        assert_equal("**a***", @hidden_word.displayed_letters() )

    end

    def test_remove_life()
      @player1.remove_life
      assert_equal(5, @player1.lives)
    end

    def test_is_letter_in_word__true()
      assert_equal(true, @game.is_letter_in_word("n"))
    end

    def test_is_letter_in_word__false()
      assert_equal(false, @game.is_letter_in_word("x"))
    end

    def test_game_result__won
      @game.player_guesses_letter("s")
      @game.player_guesses_letter("n")
      @game.player_guesses_letter("a")
      @game.player_guesses_letter("i")
      @game.player_guesses_letter("l")

      puts @hidden_word.get_displayed_letters_array()

      assert_equal("won", @game.game_result)
    end

end
