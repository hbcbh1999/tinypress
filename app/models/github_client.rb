require 'httparty'

class GithubClient

  @@root = "https://api.github.com"

  def initialize(user:)
    @user = user
  end

  def get_contents(repo:)
    res = HTTParty.get("#{@@root}/repos/#{@user}/#{repo}/contents/")

    client = GithubClientResponse.new(
      response: res,
      data: res.body,
    )
    client
  end

end

class GithubClientResponse

  attr_reader :data

  def initialize(response:, data:)
    @response = response
    @data = JSON.parse(data)
  end

end
