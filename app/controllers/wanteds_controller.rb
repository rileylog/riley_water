class WantedsController < ApplicationController
  before_action :set_wanted, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /wanteds
  # GET /wanteds.json
  def index
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @wanteds = Wanted.all
  end

  # GET /wanteds/1
  # GET /wanteds/1.json
  def show
  end

  # GET /wanteds/new
  def new
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @wanted = Wanted.new
  end

  # GET /wanteds/1/edit
  def edit
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
  end

  # POST /wanteds
  # POST /wanteds.json
  def create
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @wanted = Wanted.new(wanted_params)

    respond_to do |format|
      if @wanted.save
        format.html { redirect_to @wanted, notice: 'Wanted was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wanted }
      else
        format.html { render action: 'new' }
        format.json { render json: @wanted.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wanteds/1
  # PATCH/PUT /wanteds/1.json
  def update
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    respond_to do |format|
      if @wanted.update(wanted_params)
        format.html { redirect_to @wanted, notice: 'Wanted was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wanted.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wanteds/1
  # DELETE /wanteds/1.json
  def destroy
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @wanted.destroy
    respond_to do |format|
      format.html { redirect_to wanteds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wanted
      @wanted = Wanted.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wanted_params
      params.require(:wanted).permit(:area_id, :volume, :source, :description)
    end
end
