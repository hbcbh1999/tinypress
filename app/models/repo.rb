class Repo

  def initialize
    # Potentiall wrap this data structure
    @trie = Trie.new
  end

  def root_contents
    @trie.level(int: 0)
  end

end
