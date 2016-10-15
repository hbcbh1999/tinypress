class UsersController < ApplicationController
  after_login :load_user_data_into_dom

  respond_to :json

  # The UI really only needs to get the massive
  # tree data structure into the DOM once
  # for the Ember app to fire up and take off.
  def load_user_data_into_dom
    username = resource.fetch('username')

    @repo = JekyllRepo.new(
      user: username,
      repo: "#{username}.github.io"
    )

    respond_with @repo.dump.to_json
  end
end
