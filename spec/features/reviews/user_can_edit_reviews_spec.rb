require 'rails_helper'

feature 'user can edit a review for a bar', %{
Acceptance Criteria
[] User can navigate to a page and change review details
[] User is redirected to bar details page and can see their changes
[] User receives error if form is filled out incorrectly
[] User cannot edit another user’s review
  } do

    scenario 'user can navigate to a page and change review details' do
      bar = FactoryGirl.create(:bar)
      review = FactoryGirl.create(:review, bar: bar)

      visit root_path
      click_link (bar.name)

      click_link ("Edit Review")

      # fill_in "Title", with: "I love candy"
      # click_button("Edit")
    end

  end
