require_relative '../lib/table'
require_relative '../lib/toy_robot'

#This class contains actual methods of toy simulation on the surface of table. 
class ToyRobotSimulation

  #attributes for table and robot object
  attr_reader :obj_table, :obj_robot
  direction_array = [DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:NORTH],DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:SOUTH],DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:EAST],DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:WEST]]
 
  #constructor to initialize the table object
  def initialize(table)
    @obj_table = table
  end

  #This method verifies the validity of the placement and place the toy robot on the table accordingly.    
  def place(x_position,y_position,facing_direction)
    if @obj_table.is_correct_placement(x_position,y_position)
      @obj_robot = ToyRobot.new(x_position,y_position,facing_direction)
    end 
  end

  #if instruction is “MOVE” then it move robot 1 step in current facing direction ,
  # if “LEFT” rotate the robot current facing direction to the left,
  # if “RIGHT”  rotate the robot current facing direction to the right,
  def move_toy_robot(instruction)

    case instruction
    when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:MOVE]
       if check_valid_move(@obj_robot.facing_direction)
        @obj_robot.move
       end
    when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:LEFT]
        @obj_robot.turn_left
    when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:RIGHT]
        @obj_robot.turn_right
    end                
  end

  def check_valid_move(facing_direction)
    case facing_direction
     when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:NORTH]
      return @obj_table.is_correct_placement(@obj_robot.x_position , @obj_robot.y_position + 1) 
     when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:SOUTH]
      return @obj_table.is_correct_placement(@obj_robot.x_position , @obj_robot.y_position - 1) 
     when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:EAST]
      return @obj_table.is_correct_placement(@obj_robot.x_position + 1 , @obj_robot.y_position) 
    when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:WEST]
      return @obj_table.is_correct_placement(@obj_robot.x_position - 1 , @obj_robot.y_position) 
    end
  end
 
  #It will return current position and current facing direction of robot
  def toy_robot_report
    return @obj_robot.report
  end


  

  


end