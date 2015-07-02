require 'rails_helper'

feature 'user can edit a review for a bar', %{
Acceptance Criteria
[x] User can navigate to a page and change review details
[x] User is redirected to bar details page and can see their changes
[x] User receives error if form is filled out incorrectly
[x] User cannot edit another user’s review
  } do

    scenario 'user can navigate to a page and change review details' do
      bar = FactoryGirl.create(:bar)
      user = FactoryGirl.create(:user)
      review = FactoryGirl.create(:review, bar: bar, user: user)
      edit_review = FactoryGirl.create(:review, title: "I can edit this", bar: bar, user: user)
      sign_in_as(user)

      visit root_path
      click_link (bar.name)
      click_link("Edit Review", match: :first)
      fill_in "Title", with: edit_review.title
      click_button "Edit"

      expect(page).to have_content(edit_review.title)
      expect(page).to have_content(bar.name)

    end

    scenario 'user receives error if form is filled out incorrectly' do
      bar = FactoryGirl.create(:bar)
      user = FactoryGirl.create(:user)
      review = FactoryGirl.create(:review, bar: bar, user: user)
      edit_review = FactoryGirl.create(:review, title: "I can edit this", bar: bar, user: user)
      sign_in_as(user)

      visit root_path
      click_link (bar.name)
      click_link("Edit Review", match: :first)
      fill_in "Title", with: ""
      click_button "Edit"

      expect(page).to_not have_content(bar.name)
      expect(page).to have_content("Title can't be blank")

    end

    scenario 'user cannot edit someone elses review' do
      bar = FactoryGirl.create(:bar)
      user = FactoryGirl.create(:user)
      review = FactoryGirl.create(:review, bar: bar, user: user)
      edit_review = FactoryGirl.create(:review, title: "I can edit this", bar: bar, user: user)

      visit root_path
      click_link (bar.name)

      expect(page).to_not have_content("Edit Review")

    end
  end
