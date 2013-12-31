class HomeController < ApplicationController
  def index
    # @users = User.all
    # @areas = Area.all
    gon.areas = Area.all
    gon.wanteds = Wanted.all
    gon.for_sales = ForSale.all
  end
end
