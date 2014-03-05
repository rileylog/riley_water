class DiversionsController < ApplicationController
  before_action :set_diversion, only: [:show, :edit, :update, :destroy]

  # GET /diversions
  # GET /diversions.json
  def index
    @diversions = Diversion.all
  end

  # GET /diversions/1
  # GET /diversions/1.json
  def show
  end

  # GET /diversions/new
  def new
    @diversion = Diversion.new
  end

  # GET /diversions/1/edit
  def edit
  end

  # POST /diversions
  # POST /diversions.json
  def create
    @diversion = Diversion.new(diversion_params)

    respond_to do |format|
      if @diversion.save
        format.html { redirect_to @diversion, notice: 'Diversion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @diversion }
      else
        format.html { render action: 'new' }
        format.json { render json: @diversion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diversions/1
  # PATCH/PUT /diversions/1.json
  def update
    respond_to do |format|
      if @diversion.update(diversion_params)
        format.html { redirect_to @diversion, notice: 'Diversion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @diversion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diversions/1
  # DELETE /diversions/1.json
  def destroy
    @diversion.destroy
    respond_to do |format|
      format.html { redirect_to diversions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diversion
      @diversion = Diversion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diversion_params
      params.require(:diversion).permit(:name, :type)
    end
end
