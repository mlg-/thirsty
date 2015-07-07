require "rails_helper"

feature 'administrator can delete user', %{
  As an administrator
  I want to delete a user
  Because I really really don't like the person

  Acceptance Criteria
  [] Admin can delete user from Users Page
  [] User can no longer sign in
  } do

  scenario 'admin can delete a user' do
    user = FactoryGirl.create(:user)
    admin = FactoryGirl.create(:admin)

    sign_in_as(admin)
    visit root_path
    click_link ('Manage Users')
    click_link ('Delete User')
    save_and_open_page

    expect(page).to_not have_content(user.email)
    expect(page).to have_content("The User Has Been Deleted")
  end
end
