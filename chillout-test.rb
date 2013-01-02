require 'test/unit'
require './chillout'

include Chillout

class ChilloutTest  < Test::Unit::TestCase

  def test_main
    brain = Brain.new
    andrzej = User.new
    paneq = User.new
    p24 = Project.new
    brain.add_project("p24", p24)
    brain.add_ownership(andrzej, p24)
    brain.add_ownership(paneq, p24)
    exception = Chillout::Exception.new("Something wrong", "Stacktrace")
    p24.add_exception(exception)
    assert_equal(1, p24.total_exceptions_count)
    assert_equal(brain.projects(andrzej), [p24])
    assert_equal(brain.projects(paneq), [p24])
  end


end