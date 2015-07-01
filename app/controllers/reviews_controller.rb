class ReviewsController < ApplicationController
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

  protected

  def review_params
    params.require(:review).permit(:title, :rating, :body, :bar_id)
  end

end
