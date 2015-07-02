require 'rails_helper'

feature 'user can view all reviews for a bar', %{
  Acceptance Criteria
[] User can see a list of all reviews sorted by most recently created
[x] User does not have to be logged in to see a list of reviews
} do

  scenario 'user visits a bar page to see all reviews' do
    bar = FactoryGirl.create(:bar)
    review1 = FactoryGirl.create(:review, bar: bar)
    review2 = FactoryGirl.create(:review, bar: bar)
    
    visit root_path
    click_link (bar.name)

    expect(page).to have_content(review1.title)
    expect(page).to have_content(review1.rating.to_s)
    expect(page).to have_content(review1.body)
    expect(page.body.index(review2.title)).to be < page.body.index(
      review1.title)
  end
end
