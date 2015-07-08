require "rails_helper"

feature 'administrator can delete review', %{
  As an administrator
  I want to delete a review
  Because it is inappropriate and/or offensive

  Acceptance Criteria
  [x] Admin can delete a review
  [x] Review is no longer on bar details page
  [x] Admin receives confirmation review has been deleted
  [x] Nonadmin cannot delete a review
  } do

  scenario 'admin can delete a review' do
    bar = FactoryGirl.create(:bar)
    admin = FactoryGirl.create(:user, admin: true)
    FactoryGirl.create(:review, bar: bar)

    sign_in_as(admin)
    visit root_path
    click_link (bar.name)

    expect(page).to have_content('Delete Review')
  end

  scenario 'admin can delete a review' do
    bar = FactoryGirl.create(:bar)
    admin = FactoryGirl.create(:user, admin: true)
    review = FactoryGirl.create(:review, bar: bar)

    sign_in_as(admin)
    visit root_path
    click_link (bar.name)
    click_link ("Delete Review")

    expect(page).to_not have_content(review.title)
    expect(page).to_not have_content(review.body)
    expect(page).to have_content("Your Review Has Been Deleted")
  end

  scenario 'nonadmin cannot delete a review' do
    bar = FactoryGirl.create(:bar)
    user = FactoryGirl.create(:user)
    review = FactoryGirl.create(:review, bar: bar)

    sign_in_as(user)
    visit root_path
    click_link (bar.name)

    expect(page).to_not have_content("Delete Review")
  end
end
