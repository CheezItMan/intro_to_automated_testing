# die_spec.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'die'

Minitest::Reporters.use!

describe "Testing the Die Class" do

  before do
    @die = Die.new
  end

  

  it "I can create a Die" do
    @die.class.must_equal Die
  end

  it "A die must show greater than 0 and less than 7" do
    @die.showing.must_be :>, 0
    @die.showing.must_be :<, 7
  end

  it "A Die can be rolled" do
    counter_hash = { 1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0}

    100.times do
      @die.roll
      counter_hash[@die.showing] += 1
    end

    counter_hash[1].wont_equal 100
    counter_hash[2].wont_equal 100
    counter_hash[3].wont_equal 100
    counter_hash[4].wont_equal 100
    counter_hash[5].wont_equal 100
    counter_hash[6].wont_equal 100

  end

end
