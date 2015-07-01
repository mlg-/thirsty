require 'rails_helper'

feature 'user can view all reviews for a bar', %{
  Acceptance Criteria
[] User can see a list of all reviews sorted by most recently created
[] User does not have to be logged in to see a list of reviews
} do

  scenario 'user visits a bar page to see all reviews' do
    bar = FactoryGirl.create(:bar)
    review = FactoryGirl.create(:review, bar_id: bar.id)
    visit root_path
    click_link (bar.name)

    expect(page).to have_content(review.title)
    expect(page).to have_content(review.rating.to_s)
    expect(page).to have_content(review.body)
  end
end