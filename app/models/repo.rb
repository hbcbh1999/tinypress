class Repo

  def initialize
    # TODO(@dain):
    # Extract to @connectable
    @connection = GithubClient.new(
      user: @user,
    )
    @connection.get_contents(
      repo: @repo
    )

    @trie = Trie.fill_with(repo: @repo)
  end

  def dump
    @trie.dump!
  end

  def root_contents
    # @trie.level(int: 0)
  end

end
