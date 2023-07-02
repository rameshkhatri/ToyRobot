
require_relative 'lib/toy_robot_simulation'

# array hold the collection of directions
direction_array = [DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:NORTH],DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:SOUTH],DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:WEST],DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:EAST]]
# table object instantiate 
table =Table.new(5,5)

# toy_robot_simulation object instantiate 
simulation = ToyRobotSimulation.new(table)

# This method execute all the instruction i.e PLACE ,MOVE, LEFT, RIGHT 
def process_command(instruction,direction_array,simulation)
    if instruction.include? DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:PLACE]
     instruction = instruction.gsub " ",","
     place_commands = instruction.split(",")
     if place_commands.length == 4
         if direction_array.include?(place_commands[3].strip) && (place_commands[1].to_i.to_s == place_commands[1])  && (place_commands[2].to_i.to_s == place_commands[2])
            if simulation.obj_robot.nil?
                simulation.place(place_commands[1].to_i,place_commands[2].to_i,place_commands[3].strip)
                if simulation.obj_robot.nil?
                    puts "#{instruction} :#{Constant::IN_VALID_PLACE}"
                end
            else
                puts "#{instruction} :#{Constant::ALREADY_PLACED}"
            end    
         else    
             puts "#{instruction} :#{Constant::ERROR_INPUT }"
         end
     else
         puts "#{instruction} :#{error_input}"
     end
    elsif instruction.strip ==  DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:MOVE]  || instruction.strip == DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:LEFT] || instruction.strip == DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:RIGHT]
        if simulation.obj_robot.nil?
             puts "#{instruction} : #{Constant::IN_VALID_COMMAND}"
         else
            simulation.move_toy_robot(instruction.strip)
         end
     elsif instruction.strip == DirectionsAndInstructions::DIRECTION_INSTRUCTIONS[:REPORT] 
         puts "#{simulation.toy_robot_report}"
     else
         puts "#{instruction} :#{Constant::ERROR_INPUT}"
     end
    
 
 end
 
# This read instructions from txt file and loop on all the instructions and process each instruction one by one sequentially
instruction_read = File.readlines('instructions.txt')
instruction_read.each do |instruction|
    process_command(instruction,direction_array,simulation)
end






