require 'rails_helper'

feature 'user can create a review for a bar', %{
  Acceptance Criteria
[x] User can navigate to a page to fill out a form to review a bar
[x] User must be logged in to review a bar
[x] Form must have title, rating, and body
[x] User receives error if form is not filled out correctly
[x] User redirect to bar details page once review is created
[x] User receives error if they try to review a bar without being logged in
  } do

  scenario 'user can create a review for a bar' do
    review = FactoryGirl.build(:review)
    sign_in_as(review.user)
    visit root_path
    click_link (review.bar.name)
    click_link ("Add Review")

    fill_in "Title", with: review.title
    select "5", from: "Rating"
    fill_in "Body", with: review.body
    click_button("Submit")

    expect(page).to have_content('Add Review')
    expect(page).to have_content(review.title)
  end

  scenario 'user receives error if form is not filled out correctly' do
    bar = FactoryGirl.create(:bar)
    user = FactoryGirl.create(:user)
    review = FactoryGirl.build(:review, user: user)
    sign_in_as(user)
    visit root_path
    click_link (bar.name)
    click_link ("Add Review")

    select "5", from: "Rating"
    fill_in "Body", with: review.body
    click_button("Submit")

    expect(page).to have_content('Add a New Review')
    expect(page).to have_content("Title can't be blank")
  end

  scenario 'user must be signed in to create a review' do
    review = FactoryGirl.build(:review)
    visit root_path
    click_link (review.bar.name)
    click_link ("Add Review")

    expect(page).to have_content('You must be signed in to do that')
  end
end
