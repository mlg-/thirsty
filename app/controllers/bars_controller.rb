class BarsController < ApplicationController
  before_action :require_login, only: [:new, :edit, :update, :destroy]

  def index
    @bars = Bar.all.order(created_at: :desc)
  end

  def new
    @bar = Bar.new
  end

  def create
    @bar = Bar.new(bar_params)
    if @bar.save
      flash[:notice] = "Bar Added."
      redirect_to bars_path
    else
      flash[:notice] = @bar.errors.full_messages.join(" ")
      render 'new'
    end
  end

  def show
    @bar = Bar.find(params[:id])
    @reviews = @bar.reviews.order(created_at: :desc)
  end

  def edit
    @bar = Bar.find(params[:id])
  end

  def update
    @bar = Bar.find(params[:id])
    if @bar.update(bar_params)
      flash[:notice] = "Bar updated!"
      redirect_to bar_path(@bar)
    else
      flash[:notice] = @bar.errors.full_messages.join(" ")
      render 'edit'
    end
  end

  def destroy
    if current_user.admin?
      @bar = Bar.find(params[:id])
      @bar.destroy
      flash[:notice] = "Bar deleted"
      redirect_to bars_path
    else
      flash[:notice] = "You don't have permission to do that"
      redirect_to bars_path
    end
  end

  protected

  def bar_params
    params.require(:bar).permit(
      :name,
      :address,
      :city,
      :state,
      :zip,
      :description,
      :url,
      :photo_url,
      :seating_capacity,
      :food,
      :outdoor_seating,
      :pet_friendly)
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be signed in to do that"
      redirect_to new_user_session_path
    end
  end
end
