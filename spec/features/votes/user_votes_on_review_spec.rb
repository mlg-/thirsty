require "rails_helper"
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

feature 'user can vote on a review', %{
  As an authenticated user
I want to vote on a review
So I can show how I feel
} do

  #   Acceptance Criteria
  # [X] User can up vote review
  # [X] User can down vote review
  # [] Up vote or down vote is reflected immediately on page without reload
  # [X] User can only vote once
  # [X] User's vote is undone if they attempt to vote twice
  # [] User receives a message their vote has been added

  scenario 'user can upvote a review that they like' do
    upvote = FactoryGirl.build(:upvote)
    sign_in_as(upvote.user)

    visit bar_path(upvote.review.bar)
    click_link('Upvote')

    expect(page).to have_content(upvote.review.bar.name)
    expect(page.find("#review-#{upvote.review.id}").to have_content("HEY"))

    # expect(page.find("#review-#{upvote.review.id}")
    #            .find(".votes"))
    #            .to have_content(1)  
  end

  scenario 'user can undo upvote' do
    upvote = FactoryGirl.build(:upvote)
    sign_in_as(upvote.user)

    visit bar_path(upvote.review.bar)
    click_link('Upvote')

    expect(page).to have_content('1')

    visit bar_path(upvote.review.bar)
    click_link('Upvote')

    expect(page).to have_content('0')
  end

  scenario 'user can downvote a review that they don\'t like' do
    downvote = FactoryGirl.build(:downvote)
    sign_in_as(downvote.user)

    visit bar_path(downvote.review.bar)
    click_link('Downvote')

    expect(page).to have_content('-1')
  end

  scenario 'user can undo downvote' do
    downvote = FactoryGirl.build(:downvote)
    sign_in_as(downvote.user)

    visit bar_path(downvote.review.bar)
    click_link('Downvote')

    expect(page).to have_content('-1')

    visit bar_path(downvote.review.bar)
    click_link('Downvote')

    expect(page).to have_content('0')

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
    downvote = FactoryGirl.create(:downvote)
    sign_in_as(downvote.user)

    visit bar_path(downvote.review.bar)
    click_link('Upvote')

    expect(page).to have_content('1')
  end

  scenario 'vote tally is accurate' do
    upvote = FactoryGirl.create(:upvote)
    FactoryGirl.create(:upvote, review: upvote.review)
    FactoryGirl.create(:upvote, review: upvote.review)

    visit bar_path(upvote.review.bar)

    expect(page.find("#review-#{upvote.review.id}")
               .find(".votes"))
               .to have_content(3)
  end

end










