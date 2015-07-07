require 'rails_helper'

feature 'user can view all reviews for a bar', %{
  Acceptance Criteria
[] User can see a list of all reviews sorted by most recently created
[x] User does not have to be logged in to see a list of reviews
} do

  scenario 'user visits a bar page to see all reviews' do
    bar = FactoryGirl.create(:bar)
    user = FactoryGirl.create(:user)
    review1 = FactoryGirl.create(:review, bar: bar, user: user)
    review2 = FactoryGirl.create(:review, bar: bar, user: user)
    sign_in_as(user)

    visit root_path
    click_link (bar.name)

    expect(page).to have_content(review1.title)
    expect(page).to have_content(review1.rating.to_s)
    expect(page).to have_content(review1.body)
    expect(page.body.index(review2.title)).to be < page.body.index(
      review1.title)
  end

  scenario 'a visitor can see all reviews on a bar page' do
    review1 = FactoryGirl.create(:review)
    review2 = FactoryGirl.create(:review, bar: review1.bar)

    visit root_path
    click_link (review1.bar.name)

    expect(page).to have_content(review1.title)
    expect(page).to have_content(review1.rating.to_s)
    expect(page).to have_content(review1.body)
    expect(page.body.index(review2.title)).to be < page.body.index(
      review1.title)
  end

  scenario 'user sees 5 reviews per page, can change pages' do
    test_bar = FactoryGirl.create(:bar)

    test_reviews = FactoryGirl.create_list(:review, 6, bar: test_bar)

    visit '/'

    click_link (test_bar.name)

    expect(page).to have_content(test_reviews[4].title)
    expect(page).to_not have_content(test_reviews[0].title)

    click_link("Next")

    expect(page).to have_content(test_reviews[0].title)
    expect(page).to_not have_content(test_reviews[4].title)
  end
end
