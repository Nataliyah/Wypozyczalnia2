class HomeController < ApplicationController
  def index
    @last_thing = Thing.last
  end
end
