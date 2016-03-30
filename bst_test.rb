require "minitest/autorun"
require "minitest/pride"
require "./bst"

class BinarySearchTreeTest < Minitest::Test

  def test_bst_exists
    tree = BinarySearchTree.new
    assert_equal BinarySearchTree, tree.class
  end

  def test_valid_bst_exists
    tree = BinarySearchTree.new
    #all lower values are to the left, higher to the right
  end

  test_bst_nodes_consist_of_key_value_pairs

  test_inserted_items_are_present

  test_can_insert_new_items

  test_includes
    #finds expected values
    #does not find unexpected values

  test_can_find_depth_of

  test_can_find_max

  test_can_find_min

  test_can_sort

  test_can_load

  test_health

end
