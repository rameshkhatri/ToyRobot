require_relative '../lib/directions_and_instructions'
require_relative '../lib/modules/constant'

# This class is created for Robot
class ToyRobot
   
# These are attributes of robot which let us know current position of robot with x, y cordinates on table along with facing direction
  attr_reader :x_position, :y_position, :facing_direction

   def initialize(x_position,y_position,facing_direction)
       @x_position = x_position
       @y_position = y_position
       @facing_direction = facing_direction
   end

   # These method move the robot 1 step in current facing direction
   def move
      case @facing_direction
     when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:NORTH]
         @y_position = @y_position + 1
        
     when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:SOUTH]
        @y_position = @y_position - 1
        
     when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:EAST]
        @x_position = @x_position + 1
        
     when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:WEST]
        @x_position = @x_position - 1
        
     end   
     
   end

   # These method rotate the robot current facing direction to the left
   def turn_left
   
    case @facing_direction
        when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:NORTH]
           @facing_direction = DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:WEST]
        when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:EAST]
         @facing_direction = DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:NORTH]
        when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:SOUTH]          
          @facing_direction = DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:EAST]
        when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:WEST]
         @facing_direction = DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:SOUTH]
    end
   end

   # These method rotate the robot current facing direction to the right
   def turn_right

     case @facing_direction
       when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:NORTH]
        @facing_direction = DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:EAST]
       when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:EAST] 
        @facing_direction = DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:SOUTH]
       when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:WEST]
        @facing_direction = DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:NORTH]
       when DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:SOUTH]
        @facing_direction = DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:WEST] 
     end

   end

   # These method will return current facing direction and position of robot
   def report
    return "#{Constant::ROBOT_REPORT}" + "#{@x_position},#{@y_position},#{@facing_direction}"
   end

end    