class VotesController < ApplicationController
  before_action :require_login, only: [:create]

  def index
    review = Review.find(params[:review_id])
    @score = Vote.total_score(review.votes)
    respond_to do |format|
      format.json { render json: @score }
    end
  end

  def create
    @review = Review.find(params[:review_id])
    @vote = Vote.where(user_id: current_user, review_id: @review).first
    if @vote.nil?
      @vote = Vote.new(vote_params)
      @vote.user = current_user
    elsif @vote.value == params[:value].to_i
      @vote.value = 0
    else
      @vote.value = params[:value].to_i
    end

    if @vote.save!
      respond_to do |format|
        format.json { render json: @vote }
      end
    end
  end

  protected

  def vote_params
    params.permit(:value).merge(
      review_id: params[:review_id])
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be signed in to do that"
      redirect_to new_user_session_path
    end
  end
end
