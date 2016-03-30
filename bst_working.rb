class BinarySearchTree
  attr_reader :root
  attr_reader :left
  attr_reader :right
  attr_reader :key
  attr_reader :value
  attr_reader :counter

  def initialize
    @root = nil
    # @left = nil
    # @right = nil
  end

  def insert(key, value)
    current_leaf = Node.new(key, value).leaf(key, value)
    Node.new(key, value).next_node(key, value, node = current_leaf)
    p key, value
  end

end

class Node
  attr_reader :key
  attr_reader :value
  attr_reader :root
  attr_accessor :next
  attr_accessor :left
  attr_accessor :right
  attr_reader :counter

  def initialize(key, value)
    @key = key
    @value = value
    @counter = 0
    # @next = nil
    @left = nil
    @right = nil
  end


  def leaf(key, value)
    node = @root
    # if node.nil?
    #   false  
    # need to deal with no leaf case/first insert
  until next_node(key, value, node).nil?
        next_node(key, value, node)
      end
  end

  # def leaf(key, value)
  #   node = @root
  #   if node.nil?
  #     node
  #   else leaf.next_node(key, value, node)
  #     until leaf.next_node.nil?
  #     end
  #   end
  # end

  def next_node(key, value, node)
    case key <=> node
    when 1 then node = left
    when -1 then node = right
    end
    p @counter += 1
    node
  end
end

# class EmptyNode
#     def initialize(key)
#       @key = key
#       @left  = EmptyNode.new
#       @right = EmptyNode.new
#     end
#
#     def include?
#       false
#     end
#
#     def insert
#       false
#     end
# end



  # def recursive_search
  #
  #
  # def new_leaf(key)
  #   @counter = 0
  #   node = @root
  #   if node.nil?
  #       node
  #   elsif key < node
  #     node = node.left
  #     @counter += 1
  #   else key > node
  #     node = node.right
  #     @counter += 1
  #   end
  #   @counter
  #   node
  # end

  # def new_leaf(key)
  #   current_leaf = leaf(key)
  #   new_leaf = leaf(current_leaf)
  #   @counter +=1
  # end



tree = BinarySearchTree.new

 tree.insert(61, "Bill & Ted's Excellent Adventure")
# # => 0
 tree.insert(16, "Johnny English")
# # => 1
# tree.insert(92, "Sharknado 3")
# # => 1
# tree.insert(50, "Hannibal Buress: Animal Furnace")
# # => 2


  #   node = @root
  #   if node == nil
  #     leaf.next = Node.new(key, value)
  #   elsif key < node
  #
  #     search_recursively(node.left_node)
  #   else key > node
  #     search_recursively(node.right_node)
  #   end
  # end
  #
  # def insert(score, title)
  #   current = @root
  #   counter = 0
  #   data = {score: title}
  #   if current == nil
  #       node = Node.new(score, title)
  #   elsif @score < current
  #     current = current.left
  #     counter += 1
  #   elsif @score > current
  #      current = current.right
  #      counter += 1
  #   else @score = current
  #       puts "score already exists"
  #   end
  #   puts score, counter
  # end
