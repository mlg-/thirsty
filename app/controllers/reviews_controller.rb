class ReviewsController < ApplicationController
  before_action :require_login, only: [:new, :edit, :create, :update]

  def new
    @bar = Bar.find(params[:bar_id])
    @review = Review.new
  end

  def create
    @bar = Bar.find(params[:bar_id])
    @review = Review.new(review_params)
    @review.bar_id = @bar.id
    if @review.save
      redirect_to bar_path(params[:bar_id]), notice: "Your review has been created successfully."
    else
      flash[:notice] = @review.errors.full_messages.join(" ")
      render :new
    end
  end

  def edit
    @bar = Bar.find(params[:bar_id])
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = 'Review edited'
      redirect_to bar_path(params[:bar_id])
    else
      flash[:notice] = @review.errors.full_messages.join(" ")
      render :edit
    end
  end

  protected

  def review_params
    params.require(:review).permit(:title, :rating, :body, :bar_id)
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be signed in to do that"
      redirect_to new_user_session_path
    end
  end
end
