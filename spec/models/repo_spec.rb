# A 'Repo' is any root URL pointing to a repository in any source control system
describe Repo do

  before(:each) do
    @username = 'dainmiller'
    @repo = 'dotfiles'

    @repo = Repo.new(
      user: @username,
      repo: @repo
    )
  end

  it "should be able to return an instance of itself" do
    expect(@repo).to be_instance_of Repo
  end

  describe "#root_url" do
    it "should return the root URL for the repository passed in" do
      url = repository.root_url
      test_string = "https://github.com/#{@username}/#{@repo}"
      expect(url).to eq test_string
    end
  end

  describe "#level_order_traversal" do
    xit "should be a radix tree data structure" do
    end
    
    it "should return all root nodes" do
      #
      level = 0 # Root
      expect(repository.level_order_traversal(root: level)).to be_type Hash
      expect(repository.level_order_traversal(root: level)).to eq([
        ".atom", 
        ".cocoapods", 
        ".bash_profile", 
        ".bashrc",
        ".gitconfig"
      ])
    end
  end

  it "should know to return a JekyllRepo data type if user requests a jekyll repo
  end
  
end
