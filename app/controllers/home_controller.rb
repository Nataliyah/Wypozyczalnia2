class HomeController < ApplicationController
  def index
    @last_users = User.last(3)
    @last_things = Thing.last(3)
  end
end
