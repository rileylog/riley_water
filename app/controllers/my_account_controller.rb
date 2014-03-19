class MyAccountController < ApplicationController
  def index
    @records = Record.accessible_by(current_ability)
    gon.areas = Area.all 
    gon.records = @current_user 
  end
end
