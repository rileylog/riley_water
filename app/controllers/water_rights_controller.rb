class WaterRightsController < ApplicationController
  before_action :set_water_right, only: [:show, :edit, :update, :destroy]

  # GET /water_rights
  # GET /water_rights.json
  def index
    @water_rights = WaterRight.all
  end

  # GET /water_rights/1
  # GET /water_rights/1.json
  def show
  end

  # GET /water_rights/new
  def new
    @water_right = WaterRight.new
  end

  # GET /water_rights/1/edit
  def edit
  end

  # POST /water_rights
  # POST /water_rights.json
  def create
    @water_right = WaterRight.new(water_right_params)

    respond_to do |format|
      if @water_right.save
        format.html { redirect_to @water_right, notice: 'Water right was successfully created.' }
        format.json { render action: 'show', status: :created, location: @water_right }
      else
        format.html { render action: 'new' }
        format.json { render json: @water_right.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_rights/1
  # PATCH/PUT /water_rights/1.json
  def update
    respond_to do |format|
      if @water_right.update(water_right_params)
        format.html { redirect_to @water_right, notice: 'Water right was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @water_right.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_rights/1
  # DELETE /water_rights/1.json
  def destroy
    @water_right.destroy
    respond_to do |format|
      format.html { redirect_to water_rights_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_right
      @water_right = WaterRight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_right_params
      params.require(:water_right).permit(:number, :flow_cfs, :flow_ac_ft, :sole_supply_acres, :place_of_use, :change_application_number, :proof_due_date)
    end
end
