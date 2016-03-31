require "pry"

class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = nil
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
    depth
  end

  # def insert(key, value, current=@root, depth=[])
  #   if current.nil?
  #     @root = Node.new(key,value)
  #   elsif key < current.key
  #     if current.left.nil?
  #       current.left = Node.new(key, value)
  #       depth << 1
  #     else insert(key, value, current.left, depth)
  #     end
  #   elsif key > current.key
  #     if current.right.nil?
  #       current.right = Node.new(key, value)
  #       depth << 1
  #     else insert(key, value, current.right, depth)
  #     end
  #   end
  #   (depth.length) - 1
  # end

  def depth_of(key, current=@root)
    if current.nil?
        return nil
    elsif key == current.key
        return 0
    elsif key < current.key
      return 1 + depth_of(key, current.left)
    elsif key > current.key
      return 1 + depth_of(key, current.right)
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

  def max(current=@root)
    if current.right.nil?
      return {current.key => current.value}
    else max(current.right)
    end
  end

  def min(current=@root)
    if current.left.nil?
      return {current.key => current.value}
    else min(current.left)
    end
  end

  def sort(current=@root, movies=[])
    if current.left.nil? && current.right.nil?
      movies << {current.key => current.value}
    else
      sort(current.left, movies)
      movies << {current.key => current.value}
      if !current.right.nil?
        sort(current.right, movies)
      end
    end
    movies
  end

  def load
    files_loaded = 0
    IO.foreach( "movies.txt" ) do |key, value|
      # unless include?(key)
        insert(key, value)
        files_loaded += 1
      # end
    end
    files_loaded
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
# tree.insert(61, "Bill & Ted's Excellent Adventure")
# # => 0
# tree.insert(16, "Johnny English")

# # => 1
# tree.insert(92, "Sharknado 3")
# # # => 1
# tree.insert(50, "Hannibal Buress: Animal Furnace")
# tree.insert(8, "Hannibal")
