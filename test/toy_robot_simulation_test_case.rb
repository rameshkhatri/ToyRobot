require './test/test_helper'
require_relative '../lib/toy_robot_simulation'
require_relative '../lib/table'
require_relative '../lib/toy_robot'

#test cases containing assertions for method placing the robot on valid location ,in-valid location and executing the instructions(MOVE,LEFT,RIGHT) on robot.
class ToyRobotSimulationTestCase < ActionView::TestCase

  test "place_robot_on_valid_location" do
    
  obj_table = Table.new(4,4)
  obj_toy_robot_simulation = ToyRobotSimulation.new(obj_table)
  obj_expected_toy_robot = ToyRobot.new(0,0,"NORTH")
  obj_toy_robot_simulation.place(0,0,"NORTH")
  assert_equal obj_toy_robot_simulation.obj_robot.x_position , obj_expected_toy_robot.x_position
  assert_equal obj_toy_robot_simulation.obj_robot.y_position , obj_expected_toy_robot.y_position
  assert_equal obj_toy_robot_simulation.obj_robot.facing_direction , obj_expected_toy_robot.facing_direction

  end

  test "place_robot_on_in_valid_location" do
    obj_table = Table.new(4,4)
    obj_toy_robot_simulation = ToyRobotSimulation.new(obj_table)
    obj_toy_robot_simulation.place(5,5,"NORTH")
    assert_equal obj_toy_robot_simulation.obj_robot , nil
    
  end

  test "move_robot" do
    obj_table = Table.new(4,4)
    obj_toy_robot_simulation = ToyRobotSimulation.new(obj_table)
    obj_toy_robot_simulation.place(0,0,"NORTH")
    obj_toy_robot_simulation.move_toy_robot('MOVE')
    assert_equal "X , Y and facing of robot is :" + "#{obj_toy_robot_simulation.obj_robot.x_position},#{obj_toy_robot_simulation.obj_robot.y_position},#{obj_toy_robot_simulation.obj_robot.facing_direction}" ,"X , Y and facing of robot is :0,1,NORTH"
    obj_toy_robot_simulation.move_toy_robot('LEFT')
    assert_equal "X , Y and facing of robot is :" + "#{obj_toy_robot_simulation.obj_robot.x_position},#{obj_toy_robot_simulation.obj_robot.y_position},#{obj_toy_robot_simulation.obj_robot.facing_direction}" ,"X , Y and facing of robot is :0,1,WEST"
    obj_toy_robot_simulation.move_toy_robot('RIGHT')
    assert_equal "X , Y and facing of robot is :" + "#{obj_toy_robot_simulation.obj_robot.x_position},#{obj_toy_robot_simulation.obj_robot.y_position},#{obj_toy_robot_simulation.obj_robot.facing_direction}" ,"X , Y and facing of robot is :0,1,NORTH"

  end


end    