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
    sign_in_as(upvote.user)

    visit bar_path(upvote.review.bar)
    click_link('Upvote')

    expect(page).to have_content('1')
  end

  scenario 'user cannot upvote a review twice' do
    upvote = FactoryGirl.create(:upvote)
    upvote2 = FactoryGirl.build(:upvote, user: upvote.user, review: upvote.review)
    sign_in_as(upvote2.user)

    visit bar_path(upvote2.review.bar)
    click_link('Upvote')

    expect(page).to have_content('1')
  end

  scenario 'user can downvote a review that they don\'t like' do
    downvote = FactoryGirl.build(:downvote)
    sign_in_as(downvote.user)

    visit bar_path(downvote.review.bar)
    click_link('Downvote')

    expect(page).to have_content('-1')
  end

  scenario 'user cannot downvote twice' do
    downvote = FactoryGirl.create(:downvote)
    downvote2 = FactoryGirl.build(:downvote, user: downvote.user, review: downvote.review)
    sign_in_as(downvote2.user)

    visit bar_path(downvote2.review.bar)
    click_link('Downvote')

    expect(page).to have_content('-1')
  end

  scenario 'user can change from an upvote to downvote' do
    upvote = FactoryGirl.create(:upvote)
    downvote = FactoryGirl.build(:downvote, user: upvote.user, review: upvote.review)
    sign_in_as(upvote.user)

    visit bar_path(upvote.review.bar)
    click_link('Downvote')

    expect(page).to have_content('-1')
  end

  scenario 'user can change from a downvote to an upvote' do
    downvote = FactoryGirl.create(:upvote)
    upvote = FactoryGirl.build(:downvote, user: downvote.user, review: downvote.review)
    sign_in_as(downvote.user)

    visit bar_path(downvote.review.bar)
    click_link('Upvote')

    expect(page).to have_content('1')
  end

  # Next, test to make sure user can undo downvote or upvote
end










