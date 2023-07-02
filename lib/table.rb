# This class is created for table on which robot will move
class Table

    # x and y attributes for dimension of table i.e. width and height
    attr_reader :x_position, :y_position
   
    # constructor method called when table object instantiate 
    def initialize(x_position,y_position)
        @x_position = x_position
        @y_position = y_position
    end   
    
    # This method check whether robot movement and placement is valid or not in order to prevent it from falling
    def is_correct_placement(x_position,y_position)
       if x_position >= 0 && x_position < @x_position &&  y_position >= 0 && y_position < @y_position
        return true
       end 
       return false
    end


end    