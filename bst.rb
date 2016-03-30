
SET UP BST
starts empty
each node will contain a key/value pair

SET UP NODE CREATION
consists of data (key, value pair)
starting values

INSERT KEY/VALUE PAIRS
first one becomes root node(?)
for subsequent nodes, determine where to insert:
  look at root/current node
      if key < root, go L
      if key > root, go R
          repeat until leaf (remaining subtree s nil)
          then insert L or R of leaf

INCLUDE?
if tree is null, key doesnt exist in the tree
  if key = root, success
  if key < root, search L
  if key > root, search R
repeat until key is found or remaining subtree is nil

DEPTH OF
find how many levels of nodes
  count iterations until method finds leaf?


class Node
  attr_reader :score
  attr_reader :title
  attr_accessor :left
  attr_accessor :right

  def initialize(score, title)
    @score = score
    @title = title
    @left = nil
    @right = nil
  end
end

class BinarySearchTree
  attr_reader :root
  attr_reader :left
  attr_reader :right
  attr_accessor :next

  def initialize(score, title)
    @root = nil
    @left = nil
    @right = nil
  end


  def insert(score, title)
    @root = current
    counter = 0
    if current == nil
        Node.new(score, title)
        counter += 1
    elsif @score < current
       insert(score, title).left
    elsif @score > current
       insert(score.title).right
    else @score = current
        #already exists in tree - dont add
    end
    counter
  end

  def include?(score)
    @root = current
    if current == nil
      false
    elsif @score = current
      true
    elsif @score < current
      include?(score).left
    else @score > current
      include?(score).left
    end
  end

  def depth_of(score)
  end

  def max
  end
    # tree.max
    # => {"Sharknado 3"=>92}

  def min
  end

  def sort
  end

  def load
  end

  def health(depth)
  #report on the health of the tree by summarizing the number of child node at a given depth
  #   Where the return value is an Array with one nested array per node at that level. The nested array is:

  # [score in the node, 1 + number of child nodes, floored percentage of (1+children) over the total number of nodes]
  end


#

end

#start file
tree = BinarySearchTree.new

tree.insert(61, "Bill & Ted's Excellent Adventure")
# => 0
tree.insert(16, "Johnny English")
# => 1
tree.insert(92, "Sharknado 3")
# => 1
tree.insert(50, "Hannibal Buress: Animal Furnace")
# => 2

tree.include?(16)
# => true
tree.include?(72)
# => false


#https://www.youtube.com/watch?v=D5SrAga1pno

# SEARCH RECURSIVELY
# def search_recursively(key, node):
#      if node is None or node.key == key:
#          return node
#     elif key < node.key:
#          return search_recursively(key, node.left)
#      else:  # key > node.key
#         return search_recursively(key, node.right)
#  end

#INSERTION
# Another way to explain insertion is that in order to insert a new node in the tree, its key is first compared with that of the root. If its key is less than the root's, it is then compared with the key of the root's left child.
# If its key is greater, it is compared with the root's right child.
# This process continues, until the new node is compared with a leaf node, and then it is added as this node's right or left child, depending on its key: if the key is less than the leaf's key, then it is inserted as the leaf's left child, otherwise as the leaf's right child.

#PYTHON EXAMPLE OF INSERTION

# def binary_tree_insert(node, key, value):
#      if node is None:
#          return NodeTree(None, key, value, None)
#      if key == node.key:
#          return NodeTree(node.left, key, value, node.right)
#      if key < node.key:
#          return NodeTree(binary_tree_insert(node.left, key, value), node.key, node.value, node.right)
#      else:
#          return NodeTree(node.left, node.key, node.value, binary_tree_insert(node.right, key, value))

#TRAVERSAL
# n in-order traversal of a binary search tree will always result in a sorted list of node items (numbers, strings or other comparable items).
#
# Python ex below will call callback (some function the programmer wishes to call on the node's value, such as printing to the screen) for every node in the tree.
#
# def traverse_binary_tree(node, callback):
#     if node is None:
#         return
#     traverse_binary_tree(node.leftChild, callback)
#     callback(node.value)
#     traverse_binary_tree(node.rightChild, callback)
#
#
