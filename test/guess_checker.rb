gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '/Users/cluhring/Desktop/Chris\'_Code/Mastermind/lib/guess_checker'

class GuessCheckerTest < Minitest::Test
  def test_basic_idea
    idea = Idea.new("title", "description")
    assert_equal "title", idea.title
    assert_equal "description", idea.description
  end
end
