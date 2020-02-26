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
      @player
    end

end
