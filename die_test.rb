# die_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'die'

class TestDie < Minitest::Unit::TestCase

  def test_creation_of_die
    die = Die.new
    assert die.class == Die, "A Die cannot be created as an instance of Die"
  end

  def test_showing_number_must_be_less_than_7
    die = Die.new
    assert die.showing < 7
  end


    def test_showing_number_must_be_greater_than_0
      die = Die.new
      assert_operator die.showing, :>, 0
    end



end
