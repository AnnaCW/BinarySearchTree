require "minitest/autorun"
require "minitest/pride"
require "./bst_new"

class BinarySearchTreeTest < Minitest::Test

  def test_bst_exists
    tree = BinarySearchTree.new
    assert_equal BinarySearchTree, tree.class
  end

  def test_tree_has_root
    tree = BinarySearchTree.new
    tree.insert(13, "Test1")
    assert tree.root
    assert_equal 13, tree.root.key
  end

  def test_tree_has_correct_root
    tree = BinarySearchTree.new
    tree.insert(13, "Test1")
    tree.insert(8, "Test2")
    tree.insert(25, "Test3")
    tree.insert(88, "Test4")
    assert tree.root
    assert_equal 13, tree.root.key
  end

  def test_tree_has_right_branch
    tree = BinarySearchTree.new
    tree.insert(13, "Test1")
    tree.insert(25, "Test2")
    assert_equal 25, tree.root.right.key
  end

  def test_tree_has_left_branch
    tree = BinarySearchTree.new
    tree.insert(13, "Test1")
    tree.insert(8, "Test2")
    assert_equal 8, tree.root.left.key
  end

  def test_tree_has_left_branch
    tree = BinarySearchTree.new
    tree.insert(13, "Test1")
    tree.insert(8, "Test2")
    tree.insert(3, "Test3")
    assert_equal 3, tree.root.left.left.key
  end

  def test_include_method_works
    tree = BinarySearchTree.new
    tree.insert(13, "Test1")
    tree.insert(8, "Test2")
    tree.insert(3, "Test3")
    assert_equal tree.include?(8), true
  end

  def test_depth_of_root
    tree = BinarySearchTree.new
    tree.insert(13, "Test1")
    assert_equal tree.depth_of(13), 0
  end

  def test_depth_of_1
    tree = BinarySearchTree.new
    tree.insert(61, "Test1")
    tree.insert(20, "Test2")
    tree.insert(71, "Test3")
    assert_equal tree.depth_of(20), 1
    assert_equal tree.depth_of(71), 1
  end

  def test_depth_of_level_2
    tree = BinarySearchTree.new
    tree.insert(61, "Test1")
    tree.insert(20, "Test2")
    tree.insert(71, "Test3")
    tree.insert(5, "Test4")
    tree.insert(80, "Test5")
    assert_equal tree.depth_of(5), 2
    assert_equal tree.depth_of(80), 2
  end

  # def test_insert
  #   tree = BinarySearchTree.new
  #   tree.insert(13, "Test1")
  #
  #   assert_equal true, tree.include?(13, "Test1")
  # end

  # def test_search
  #   tree = BinarySearchTree.new

  # test_bst_nodes_consist_of_key_value_pairs

  # test_inserted_items_are_present
  #
  # test_can_insert_new_items
  #
  # test_includes
  #   #finds expected values
  #   #does not find unexpected values
  #
  # test_can_find_depth_of
  #
  # test_can_find_max
  #
  # test_can_find_min
  #
  # test_can_sort
  #
  # test_can_load
  #
  # test_health

end
