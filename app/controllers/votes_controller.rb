class VotesController < ApplicationController
  def index
    @review = Review.find(params[:review_id])
    @votes = @review.votes
    if @votes.empty?
      @score = 0
    else
      score = []
      @votes.each do |vote|
        score << vote[:value]
      end
      @score = score.reduce(:+)
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
      redirect_to review_votes_path(@review, @vote)
      return "sucess"
    else
      redirect_to review_votes_path(@review, @vote)
      return "failure"
    end
    @vote
  end

  protected

  def vote_params
    params
    .permit(:value)
    .merge(review_id: params[:review_id])
  end
end
