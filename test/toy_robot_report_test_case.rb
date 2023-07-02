require './test/test_helper'
require_relative '../lib/toy_robot'

#test cases containing assertions for method report() of robot which return the current position along with current facing direction of robot. 
class ToyRobotReportTestCase < ActionView::TestCase

   test "report_robot" do
      toy_robot = ToyRobot.new(0,0,"NORTH")
      assert_equal "X , Y and facing of robot is :" + "#{toy_robot.x_position},#{toy_robot.y_position},#{toy_robot.facing_direction}" ,"X , Y and facing of robot is :0,0,NORTH"
      toy_robot.move
      assert_equal "X , Y and facing of robot is :" + "#{toy_robot.x_position},#{toy_robot.y_position},#{toy_robot.facing_direction}" ,"X , Y and facing of robot is :0,1,NORTH"
      toy_robot.turn_right
      toy_robot.move
      assert_equal "X , Y and facing of robot is :" + "#{toy_robot.x_position},#{toy_robot.y_position},#{toy_robot.facing_direction}" ,"X , Y and facing of robot is :1,1,EAST"
      toy_robot.turn_left
      toy_robot.move
      assert_equal "X , Y and facing of robot is :" + "#{toy_robot.x_position},#{toy_robot.y_position},#{toy_robot.facing_direction}" ,"X , Y and facing of robot is :1,2,NORTH"
   end

end