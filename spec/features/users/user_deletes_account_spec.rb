require "rails_helper"

feature 'user deletes account', %{
  As an authenticated user
  I want to delete my account
  So that my information is no longer retained by the app.
  } do

  # Acceptance Criteria
  # [X] User can navigate to profile page
  # [X] User can delete account
  # [X] User can no longer sign in

  scenario('user can delete account from profile page')do
  user = FactoryGirl.create(:user)

  sign_in_as(user)

  visit edit_user_registration_path(user)
  click_button "Cancel my account"

  expect(page).to have_content("Your account has been successfully cancelled.")

  sign_in_as(user)

  expect(page).to have_content("Invalid email or password.")
  end

end
