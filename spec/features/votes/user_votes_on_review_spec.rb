require "rails_helper"

feature 'user can vote on a review', %{
  As an authenticated user
I want to vote on a review
So I can show how I feel
} do

#   Acceptance Criteria
# [] User can up vote review
# [] User can down vote review
# [] Up vote or down vote is reflected immediately on page without reload
# [] User can only vote once
# [] User receives error if they attempt to vote the same way again
# [] User receives a message their vote has been added

  scenario 'user can upvote a review that they like' do
    upvote = FactoryGirl.build(:upvote)

    visit bar_path(upvote.review.bar)
    click_link('Upvote')

    expect(page).to have_content('1')
  end
end