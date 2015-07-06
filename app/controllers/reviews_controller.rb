class ReviewsController < ApplicationController
  before_action :require_login, only: [:new, :edit, :create, :update, :destroy]

  def new
    @bar = Bar.find(params[:bar_id])
    @review = Review.new
  end

  def create
    @bar = Bar.find(params[:bar_id])
    binding.pry
    @review = Review.new(review_params, user: current_user, bar: @bar)
    # @review.user = current_user
    # @review.bar = @bar
    if @review.save
      flash[:notice] = "Your review has been created successfully."
      redirect_to bar_path(params[:bar_id])
    else
      flash[:notice] = @review.errors.full_messages.join(" ")
      render :new
    end
  end

  def edit
    @bar = Bar.find(params[:bar_id])
    @review = Review.find(params[:id])
    if current_user != @review.user
      redirect_to bars_path(@bar)
    end
  end

  def update
    @review = Review.find(params[:id])
    if current_user == @review.user
      if @review.update(review_params)
        flash[:notice] = 'Review edited'
        redirect_to bar_path(params[:bar_id])
      else
        flash[:notice] = @review.errors.full_messages.join(" ")
        render :edit
      end
    else
      redirect_to bars_path
      flash[:notice] = 'You do not have permisson to do that'
    end
  end

  def destroy
    @user = current_user
    @bar = Bar.find(params[:bar_id])
    @review = Review.find(params[:id])
    if current_user == @review.user
      if @review.destroy
        flash[:notice] = 'Your Review Has Been Deleted'
      else
        flash[:notice] = @review.errors.full_messages.join(" ")
      end
      redirect_to bar_path(@bar)
    elsif current_user.admin?
      if @review.destroy
        flash[:notice] = 'Your Review Has Been Deleted'
      else
        flash[:notice] = @review.errors.full_messages.join(" ")
      end
    else
      redirect_to bars_path
      flash[:notice] = 'You do no have permisson to do that'
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
