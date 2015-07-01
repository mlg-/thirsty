require "rails_helper"

feature 'user updates profile', %{
  As an authenticated user
  I want to update my information
  So that I can keep my profile up to date
} do
  #   Acceptance Criteria
  # [] User can navigate to profile page
  # [] User can change email and sign in
  # [] If user enters invalid email, receives error
  # [] User can change password and sign in
  # [] If user enters invalid password, receives error
  # [] If user is not on their own profile page, user cannot edit

  # scenario "user views their profile" do
  #   user = FactoryGirl.create(:user)
  #
  #   visit new_user_session_path
  #
  #   fill_in 'Email', with: user.email
  #   fill_in 'Password', with: user.password
  #
  #   click_button 'Log in'
  #
  #   visit user_path(user.id)
  # end
end
