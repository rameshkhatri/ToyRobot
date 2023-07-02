
# This module class is created for constant variable which will be used for displaying messages
module Constant
  #Constant for message when robot report function called  
  ROBOT_REPORT = "X , Y and facing of robot is :"

  #Constant for message when error in input instruction to robot
  ERROR_INPUT = "Sorry I am not able to understand your instruction"

  #Constant for message when error in robot placement
  IN_VALID_PLACE = "Sorry this placement is not valid for me to stand on table"

  #Constant for message when move and turn instruction to robot before placement
  IN_VALID_COMMAND = "This commands are not acceptable as I am not placed yet"

  #Constant for message when place instruction is given to already placed robot 
  ALREADY_PLACED = "Robot already placed on table please give command Move,Left,Right"
end    