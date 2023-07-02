require './test/test_helper'
require_relative '../lib/toy_robot_simulation'



class MainRobotCommandExecuteTestCase < ActionView::TestCase

    test "process_place_command" do
      direction_array = [DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:NORTH],DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:SOUTH],DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:WEST],DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:EAST]]
      table = Table.new(5,5)
      obj_simulation = ToyRobotSimulation.new(table)
      
      obj_simulation.process_command("PLACE 0,0,NORTH",direction_array,obj_simulation)
      assert_not_nil obj_simulation.obj_robot
    end

end