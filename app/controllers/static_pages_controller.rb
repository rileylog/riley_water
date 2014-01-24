class StaticPagesController < ApplicationController
  before_filter :authenticate_user!, only: :dashboard

  def home
  end

  def dashboard
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
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

  def services
  end

  def diligence_claims
  end

  def proof_of_beneficial_use
  end

  def change_application
  end

  def temporary_change_application
  end

  def reports_of_conveyance
  end

  def dam_inspection
  end

  def fourty_year_plan
  end

  def extension_request
  end

  def due_diligence
  end

  def applications_to_appropriate
  end

  def non_use_application
  end

  def projects
  end

  def profile
  end

  def contact
  end
end
