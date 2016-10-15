class JekyllRepo < Repo

  def initialize(user:, repo:)
    @user = user
    @repo = repo
    super.new
  end

end
