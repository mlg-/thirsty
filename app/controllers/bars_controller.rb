class BarsController < ApplicationController
  def index
    @bars = Bar.all.order(created_at: :desc)
  end

  def new
    @bar = Bar.new
  end

  def create
    @bar = Bar.new(bar_params)
    if @bar.save!
      flash[:notice] = "Bar Added."
      redirect_to bars_path
    else
      flash[:notice] = @bar.errors.full_messages.join(" ")
      render 'new'
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
end
