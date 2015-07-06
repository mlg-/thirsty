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
      @score = score.reduce[:+]
    end
  end

  def create
    @review = Review.find(params[:id])
    @vote = Vote.new(votes_params)
    if @vote.user_id == current_user
      if @vote.save
        return "sucess"
      else
        return "failure"
      end
    end
  end

  protected

  def votes_params
    params.require(:votes).permit(:value)
  end
end
