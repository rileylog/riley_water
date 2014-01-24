class ForSalesController < ApplicationController
  before_action :set_for_sale, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /for_sales
  # GET /for_sales.json
  def index
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @for_sales = ForSale.all
  end

  # GET /for_sales/1
  # GET /for_sales/1.json
  def show
  end

  # GET /for_sales/new
  def new
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @for_sale = ForSale.new
  end

  # GET /for_sales/1/edit
  def edit
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
  end

  # POST /for_sales
  # POST /for_sales.json
  def create
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @for_sale = ForSale.new(for_sale_params)

    respond_to do |format|
      if @for_sale.save
        format.html { redirect_to @for_sale, notice: 'For sale was successfully created.' }
        format.json { render action: 'show', status: :created, location: @for_sale }
      else
        format.html { render action: 'new' }
        format.json { render json: @for_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /for_sales/1
  # PATCH/PUT /for_sales/1.json
  def update
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    respond_to do |format|
      if @for_sale.update(for_sale_params)
        format.html { redirect_to @for_sale, notice: 'For sale was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @for_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /for_sales/1
  # DELETE /for_sales/1.json
  def destroy
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @for_sale.destroy
    respond_to do |format|
      format.html { redirect_to for_sales_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_for_sale
      @for_sale = ForSale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def for_sale_params
      params.require(:for_sale).permit(:area_id, :volume, :source, :price, :description, :transferable_to => [])
    end
end
