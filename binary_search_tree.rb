class BST
  attr_accessor :data, :left, :right
  def initialize(root)
    @data = root
    @left = nil
    @right = nil
  end

  def insert(data) 
    if data <= self.data
      if self.left.nil?
        self.left = BST.new(data)
      else
        self.left.insert(data)
      end
    else
      if self.right.nil?
        self.right = BST.new(data)
      else
        self.right.insert(data)
      end
    end
  end

  def each(&block)
    left.each(&block) if left
    block.call(data)
    right.each(&block) if right
  end
end

# four = BST.new 4
# four.insert 2
# four.insert 6
# four.insert 1
# four.insert 3
# four.insert 7
# four.insert 5

# puts(four.data)
# puts(four.left.data)
# puts(four.left.left.data)
# puts(four.left.right.data)
# puts(four.right.data)
# puts(four.right.left.data)
# puts(four.right.right.data)
