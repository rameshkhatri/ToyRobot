require './test/test_helper'
require_relative '../lib/table'

# test case containing assertions for method is_correct_placement of table and verifies the placement of the robot and also validates whether the robot's movement is correct or not
class TableCorrectPlacementTestCase < ActionView::TestCase

    test "check_table_correct_placement_valid_or_invalid" do

        table = Table.new(5,5)
        placement_valid = table.is_correct_placement(0,0)
        assert_equal true, placement_valid

        placement_valid = table.is_correct_placement(5,5)
        assert_equal false, placement_valid

        placement_valid = table.is_correct_placement(4,4)
        assert_equal true, placement_valid

        placement_valid = table.is_correct_placement(-1,-1)
        assert_equal false, placement_valid

        
    end
end