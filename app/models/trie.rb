class Trie

  def initialize
  end

  def structure
    {} # TODO(@dain): Add
  end

  def level(int:)
    to_level(int)
  end

  # == Level Order Traversal
  #
  # Level order traversal processes the nodes level by level. 
  #
  # First processes the root, & then its children, & so on. 
  #
  # Unlike the other traversal methods, a recursive version does not exist.
  def level_order_traversal(root:, cap:)
  end

  private
  def to_level int
    structure.map do |key, value|
      if int.eql? 0
        key.to_s
      elsif int.eql? 1
        if key.is_a?(Object) || key.is_a?(Array)
          key
        end
      end
    end
  end
end
