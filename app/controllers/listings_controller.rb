class ListingsController < ApplicationController
  before_filter :authenticate_user!, only: :dashboard
  
  def dashboard
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @areas = Area.all
    @wanteds = Wanted.all
    @for_sales = ForSale.all
    @records = Record.all 
  end

  def buy_sell
    # @users = User.all
    # @areas = Area.all
    gon.areas = Area.all
    gon.wanteds = Wanted.all
    gon.for_sales = ForSale.all
  end
end
