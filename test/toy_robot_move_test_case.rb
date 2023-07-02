require './test/test_helper'
require_relative '../lib/toy_robot'

#test cases containing assertions for method move() of robot which help robot to move in multiple direction as per current facing of robot i.e. move in east, west,  south and north direction 
class ToyRobotMoveTestCase < ActionView::TestCase

  test "move_west_direction" do
   
    toy_robot = ToyRobot.new(0,0,"EAST")
    toy_robot.move
    toy_robot.move
    assert_equal 2,toy_robot.x_position
    assert_equal 0,toy_robot.y_position
    toy_robot.move
    toy_robot.move
    assert_equal 4,toy_robot.x_position
  end  

  test "move_east_direction" do
   
    toy_robot = ToyRobot.new(4,0,"WEST")
    toy_robot.move
    toy_robot.move
    assert_equal 2,toy_robot.x_position
    assert_equal 0,toy_robot.y_position
    toy_robot.move
    toy_robot.move
    assert_equal 0,toy_robot.x_position
  end

  test "move_north_direction" do
   
    toy_robot = ToyRobot.new(0,0,"NORTH")
    toy_robot.move
    toy_robot.move
    assert_equal 0,toy_robot.x_position
    assert_equal 2,toy_robot.y_position
    toy_robot.move
    toy_robot.move
    assert_equal 4,toy_robot.y_position
  end

  test "move_south_direction" do
   
    toy_robot = ToyRobot.new(0,4,"SOUTH")
    toy_robot.move
    toy_robot.move
    assert_equal 0,toy_robot.x_position
    assert_equal 2,toy_robot.y_position
    toy_robot.move
    toy_robot.move
    assert_equal 0,toy_robot.y_position
  end
 
end    
