require './test/test_helper'
require_relative '../lib/toy_robot'

#test cases containing assertions for method turn_left() and turn_right() of robot which rotate the direction of robot.
class ToyRobotTurnLeftRightTestCase < ActionView::TestCase

    test "test_turn_left" do
        toy_robot = ToyRobot.new(0,0,"NORTH")

        toy_robot.turn_left
        assert_equal "WEST", toy_robot.facing_direction
        
        toy_robot.turn_left
        assert_equal "SOUTH", toy_robot.facing_direction

        toy_robot.turn_left
        assert_equal "EAST", toy_robot.facing_direction
        
        toy_robot.turn_left

        assert_equal "NORTH", toy_robot.facing_direction
    end
    
    test "test_turn_right" do
        toy_robot = ToyRobot.new(0,0,"NORTH")
        
        toy_robot.turn_right
        assert_equal "EAST" ,toy_robot.facing_direction

        toy_robot.turn_right
        assert_equal "SOUTH" ,toy_robot.facing_direction

        toy_robot.turn_right
        assert_equal "WEST" ,toy_robot.facing_direction

        toy_robot.turn_right
        assert_equal "NORTH" , toy_robot.facing_direction

    end

end    