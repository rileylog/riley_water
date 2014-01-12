class StaticPagesController < ApplicationController
  before_filter :authenticate_user!, only: :dashboard

  def home
  end

  def dashboard
    @areas = Area.all
    @wanteds = Wanted.all
    @for_sales = ForSale.all
  end

  def buy_sell
    # @users = User.all
    # @areas = Area.all
    gon.areas = Area.all
    gon.wanteds = Wanted.all
    gon.for_sales = ForSale.all
  end
end
