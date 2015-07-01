require 'rails_helper'

feature 'user can edit a review for a bar', %{
Acceptance Criteria
[x] User can navigate to a page and change review details
[] User is redirected to bar details page and can see their changes
[] User receives error if form is filled out incorrectly
[] User cannot edit another user’s review
  } do

    scenario 'user can navigate to a page and change review details' do
      bar = FactoryGirl.create(:bar)
      review = FactoryGirl.create(:review, bar: bar)
      edit_review = FactoryGirl.create(:review, title: "I can edit this", bar: bar)
      user = FactoryGirl.create(:user)
      sign_in_as(user)

      visit root_path
      click_link (bar.name)
      save_and_open_page
      click_link("Edit Review", match: :first)

      fill_in "Title", with: edit_review.title
      click_button "Edit"

      expect(page).to have_content(edit_review.title)

    end

  end
