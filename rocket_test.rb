require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @rocket = Rocket.new
  end

  def teardown
    @rocket = nil
  end

  def test_lift_off_true
    # arrange
    result = @rocket.lift_off
    expected = true
    # act
    assert_equal(expected, result)
    # assert
  end

  def test_lift_off_false
    @rocket = Rocket.new({ :flying => true })
    result = @rocket.lift_off
    expected = false

    assert_equal(expected, result)
  end

  def test_land_true
    @rocket.lift_off #this sets flying to true
    result = @rocket.land
    expected = true
    assert_equal(expected, result)

  end

  def test_land_false
    #flying = false at initialize
    result = @rocket.land
    expected = false

    assert_equal(expected, result)
  end



end
