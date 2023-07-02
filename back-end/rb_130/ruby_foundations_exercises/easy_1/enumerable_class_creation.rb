# Assume we have a Tree class that implements a binary tree.

# class Tree
#   ...
# end

# For this exercise, modify the Tree class to support the methods of Enumerable. 
# You do not have to actually implement any methods -- just show the methods 
# that you must provide.

class Tree
  include Enumerable

  def each
    # each implementation
  end

  def <=>
    # code for comparison of Tree objects
  end
end