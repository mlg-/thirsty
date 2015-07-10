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

  scenario 'user can upvote a review that they like', js: true do
    review = FactoryGirl.create(:review)
    sign_in_as(review.user)

    visit bar_path(review.bar)

    click_link("Upvote Review #{review.id}")

    expect(page).to have_content(review.bar.name)
    expect(page.find("#votes-review-#{review.id}")).to have_content("1")
  end

  scenario 'user can undo upvote', js: true do
    review = FactoryGirl.create(:review)
    sign_in_as(review.user)

    visit bar_path(review.bar)
    click_link("Upvote Review #{review.id}")

    expect(page.find("#votes-review-#{review.id}")).to have_content("1")

    visit bar_path(review.bar)
    click_link("Upvote Review #{review.id}")

    expect(page.find("#votes-review-#{review.id}")).to have_content("0")
  end

  scenario 'user can downvote a review that they don\'t like', js: true do
    review = FactoryGirl.create(:review)
    sign_in_as(review.user)

    visit bar_path(review.bar)
    click_link("Downvote Review #{review.id}")

    expect(page.find("#votes-review-#{review.id}")).to have_content("-1")
  end

  scenario 'user can undo downvote', js: true do
    review = FactoryGirl.create(:review)
    sign_in_as(review.user)

    visit bar_path(review.bar)
    click_link("Downvote Review #{review.id}")

    expect(page.find("#votes-review-#{review.id}")).to have_content("-1")

    visit bar_path(review.bar)
    click_link("Downvote Review #{review.id}")

    expect(page.find("#votes-review-#{review.id}")).to have_content("0")

  end

  scenario 'user can change from an upvote to downvote', js: true do
    review = FactoryGirl.create(:review)

    sign_in_as(review.user)

    visit bar_path(review.bar)
    click_link("Upvote Review #{review.id}")

    click_link("Downvote Review #{review.id}")

    expect(page.find("#votes-review-#{review.id}")).to have_content("-1")
  end

  scenario 'user can change from a downvote to an upvote', js: true do
    review = FactoryGirl.create(:review)
    sign_in_as(review.user)

    visit bar_path(review.bar)
    click_link("Upvote Review #{review.id}")

    expect(page.find("#votes-review-#{review.id}")).to have_content("1")
  end

  scenario 'vote tally is accurate' do
    upvote = FactoryGirl.create(:upvote)
    FactoryGirl.create(:upvote, review: upvote.review)
    FactoryGirl.create(:upvote, review: upvote.review)

    visit bar_path(upvote.review.bar)

    expect(page.find("#review-#{upvote.review.id}").find(
          ".votes")).to have_content(3)
  end

  scenario 'visitor tries to upvote a review', js: true do
    review = FactoryGirl.create(:review)

    visit bar_path(review.bar)

    expect(page).to_not have_content("Upvote Review #{review.id}")
  end

end
