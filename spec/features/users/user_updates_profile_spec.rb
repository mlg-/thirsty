require "rails_helper"

feature 'user updates profile', %{
  As an authenticated user
  I want to update my information
  So that I can keep my profile up to date
} do
  #   Acceptance Criteria
  # [X] User can navigate to profile page
  # [X] User can change email and sign in
  # [X] If user enters invalid email, receives error
  # [X] User can change password and sign in
  # [X] If user enters invalid password, receives error

  scenario "user views their profile" do
    user = FactoryGirl.create(:user)

    sign_in_as(user)

    click_link(user.email)

    expect(page).to have_content("Edit")
  end

  scenario 'user can update their email and sign in' do
    user = FactoryGirl.create(:user)

    sign_in_as(user)

    visit edit_user_registration_path(user)

    fill_in("Email", with: "bloop@bleep.com")
    fill_in("Current password", with: user.password)
    click_button("Update")

    expect(page).to have_content("Your account has been updated successfully.")

    click_link("Sign Out")

    sign_in_as(user)
  end

  scenario 'user cannot update with an invalid email' do
    user = FactoryGirl.create(:user)

    sign_in_as(user)

    visit edit_user_registration_path(user)

    fill_in("Email", with: "bloop")
    fill_in("Current password", with: user.password)
    click_button("Update")

    expect(page).to have_content("Email is invalid")
  end

  scenario 'user can change password and sign in' do
    user = FactoryGirl.create(:user)

    sign_in_as(user)

    visit edit_user_registration_path(user)

    fill_in("Password", with: "THIS IS SO SECURE!")
    fill_in("Password confirmation", with: "THIS IS SO SECURE!")
    fill_in("Current password", with: user.password)
    click_button("Update")

    expect(page).to have_content("Your account has been updated successfully.")

    click_link("Sign Out")

    sign_in_as(user)
  end

  scenario 'user enters invalid password and recieves error' do
    user = FactoryGirl.create(:user)

    sign_in_as(user)

    visit edit_user_registration_path(user)

    fill_in("Password", with: "")
    fill_in("Password confirmation", with: "")
    fill_in("Current password", with: user.password)
    click_button("Update")

    expect(page).to have_content("Your account has been updated successfully.")

    click_link("Sign Out")

    sign_in_as(user)
  end
end
