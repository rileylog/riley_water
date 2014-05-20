class WaterRightsManagementController < ApplicationController

  def dashboard
    @water_rights = WaterRight.all
  end

  def show_water_rights
    @water_rights = WaterRight.all
  end
  
end
