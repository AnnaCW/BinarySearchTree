require "minitest/autorun"
require "minitest/pride"
require "./bst_new"

class BinarySearchTreeTest < Minitest::Test

  def test_bst_exists
    tree = BinarySearchTree.new
    assert_equal BinarySearchTree, tree.class
  end

  # def test_bst_starts_empty
  #   tree = BinarySearchTree.new
  #   assert_equal nil, tree.root
  # end
  #
  # def test_left_starts_at_zero
  #   tree = BinarySearchTree.new
  #   assert_equal nil, tree.left
  # end

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

  def test_include_works
    tree = BinarySearchTree.new
    tree.insert(13, "Test1")
    tree.insert(8, "Test2")
    tree.insert(3, "Test3")
    assert_equal tree.include?(8), true
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
