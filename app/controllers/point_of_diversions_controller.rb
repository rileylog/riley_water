class PointOfDiversionsController < ApplicationController
  before_action :set_point_of_diversion, only: [:show, :edit, :update, :destroy]

  # GET /point_of_diversions
  # GET /point_of_diversions.json
  def index
    @point_of_diversions = PointOfDiversion.all
  end

  # GET /point_of_diversions/1
  # GET /point_of_diversions/1.json
  def show
  end

  # GET /point_of_diversions/new
  def new
    @point_of_diversion = PointOfDiversion.new
  end

  # GET /point_of_diversions/1/edit
  def edit
  end

  # POST /point_of_diversions
  # POST /point_of_diversions.json
  def create
    @point_of_diversion = PointOfDiversion.new(point_of_diversion_params)

    respond_to do |format|
      if @point_of_diversion.save
        format.html { redirect_to @point_of_diversion, notice: 'Point of diversion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @point_of_diversion }
      else
        format.html { render action: 'new' }
        format.json { render json: @point_of_diversion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /point_of_diversions/1
  # PATCH/PUT /point_of_diversions/1.json
  def update
    respond_to do |format|
      if @point_of_diversion.update(point_of_diversion_params)
        format.html { redirect_to @point_of_diversion, notice: 'Point of diversion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @point_of_diversion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /point_of_diversions/1
  # DELETE /point_of_diversions/1.json
  def destroy
    @point_of_diversion.destroy
    respond_to do |format|
      format.html { redirect_to point_of_diversions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point_of_diversion
      @point_of_diversion = PointOfDiversion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def point_of_diversion_params
      params.require(:point_of_diversion).permit(:name, :kml)
    end
end
