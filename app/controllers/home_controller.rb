class HomeController < ApplicationController
  def index
    # @users = User.all
    # @areas = Area.all
    gon.areas = Area.all
    gon.wanteds = Wanted.all
  end
end
