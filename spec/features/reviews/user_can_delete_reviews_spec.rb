require 'rails_helper'

feature 'user can delete their own review for a bar', %{
Acceptance Criteria
[] A user cannot delete another user’s review
[] Authenticated user can delete their own reviews from profile page
[] Authenticated user can delete their own reviews from bar details page
  } do

  scenario 'user can delete their own review for a bar' do
    bar = FactoryGirl.create(:bar)
    user = FactoryGirl.create(:user)
    FactoryGirl.create(:review, bar: bar, user: user)
    sign_in_as(user)

    visit root_path
    click_link (bar.name)
    click_link("Delete Review", match: :first)

    expect(page).to have_content('Your Review Has Been Deleted')
    expect(page).to have_content(bar.city)
  end

  scenario 'user cannot delete someone elses review for a bar' do
    bar = FactoryGirl.create(:bar)
    user = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)
    FactoryGirl.create(:review, bar: bar, user: user)

    sign_in_as (user2)
    visit root_path
    click_link (bar.name)

    expect(page).to_not have_content("Delete Review")
  end

  scenario 'an admin can delete any review' do
    bar = FactoryGirl.create(:bar)
    user = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:admin)
    FactoryGirl.create(:review, bar: bar, user: user)

    sign_in_as (user2)
    visit root_path
    click_link (bar.name)

    expect(page).to have_content("Delete Review")
  end
end
