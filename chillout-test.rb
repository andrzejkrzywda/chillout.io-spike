require 'test/unit'
require './chillout'

include Chillout

class ChilloutTest  < Test::Unit::TestCase

  def test_main
    brain = Brain.new
    
    project = brain.add_project("p24")
    exception = Chillout::Exception.new("Something wrong", "Stacktrace")
    project.add_exception(exception)
    assert_equal(1, project.total_exceptions_count)
  end


end