require "pry"

class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = nil
    @left
  end

  def insert(key, value, current=@root, depth=0)
    if current.nil?
      @root = Node.new(key,value)
    elsif key < current.key
      if current.left.nil?
        current.left = Node.new(key, value)
        depth +=1
      else insert(key, value, current.left, depth+=1)
      end
    elsif key > current.key
      if current.right.nil?
        current.right = Node.new(key, value)
        depth +=1
      else insert(key, value, current.right, depth+=1)
      end
    end
  end

  def include?(key, current=@root)
    if current.nil?
      return false
    elsif key == current.key
      return true
    elsif key < current.key
      if current.left.nil?
        return false
      else include?(key, current.left)
      end
    elsif key > current.key
      if current.right.nil?
        return false
      else include?(key, current.right)
      end
    end
  end

end


class Node
  attr_reader :key
  attr_reader :value
  attr_accessor :right
  attr_accessor :left

  def initialize(key, value)
    @key = key
    @value = value
    @left = nil
    @right = nil
  end
end


# tree = BinarySearchTree.new
#
#
#
# tree.insert(61, "Bill & Ted's Excellent Adventure")
# # => 0
# tree.insert(16, "Johnny English")
# # => 1
# tree.insert(92, "Sharknado 3")
# # # => 1
# tree.insert(50, "Hannibal Buress: Animal Furnace")
# tree.insert(8, "Hannibal")
# tree.search_recursively(61, "Bill & Ted's Excellent Adventure")

# p @root
