class WaterRightsManagementController < ApplicationController

  def dashboard
    @water_rights = WaterRight.all
    @point_of_diversions = PointOfDiversion.all
  end

  def show_water_rights
    @water_rights = WaterRight.all
    gon.point_of_diversions = PointOfDiversion.all
    gon.water_rights = WaterRight.all
  end
  
end
