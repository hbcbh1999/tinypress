require 'rails_helper'

# == TODO(@dain): 
#
# - Implement dynamic passing of user and repo.
# - Add webmocks
#
# === Examples:
# 
# before(:each) do 
#   @github = GithubClient.new
#     user: #{user}
#   end
#   @github.get_contents(repo: #{repo})
# end
#
# FakeGithub.#{repo}_first_content_payload
#
describe GithubClient, type: :unit do 

  before(:each) do 
    @github = GithubClient.new(
      user: 'dainmiller'
    )
  end

  describe "every method call" do

    it "should return an instance of the GithubClientResponse class" do
      response = @github.get_contents(repo: 'dotfiles')
      expect(response).to be_an_instance_of GithubClientResponse
    end
  end

  describe "#get_contents" do

    before(:each) do
      response ||= @github.get_contents(repo: 'dotfiles')
      @content = response.data
    end

    it "should return an array" do
      expect(@content).to be_kind_of Array
    end

    it "should return contents for username and repo" do
      live_content = @content.first

      expect(live_content).to(
        eq(FakeGithub.dotfiles_first_content_payload)
      )
    end

  end

end

