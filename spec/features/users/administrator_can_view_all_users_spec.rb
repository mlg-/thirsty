require "rails_helper"

feature 'administrator can view a list of all users', %{
  As an administrator
  I want to view a list of users
  So I can see all the users on my side.

  Acceptance Criteria
  [x] Admin can navigate to a Users Page listing all users
  } do

  scenario 'administrator can navigate to a users page listing all users' do
    test_users = FactoryGirl.create_list(:user, 3)
    admin = FactoryGirl.create(:user, admin: true)

    sign_in_as(admin)
    visit root_path
    click_link ('Manage Users')

    expect(page).to have_content(test_users[0].email)
    expect(page).to have_content(test_users[1].email)
    expect(page).to have_content(test_users[2].email)
  end
end
