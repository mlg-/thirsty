require "rails_helper"

feature 'administrator can delete user', %{
  As an administrator
  I want to delete a user
  Because I really really don't like the person

  Acceptance Criteria
  [x] Admin can delete user from Users Page
  [x] User can no longer sign in
  [x] Nonadmin cannot delete user
  } do

  scenario 'admin can delete a user' do
    user = FactoryGirl.create(:user)
    FactoryGirl.create(:user)
    admin = FactoryGirl.create(:user, admin: true, email: "Admin@Voight.com")

    sign_in_as(admin)
    visit root_path
    click_link ('Manage Users')

    find(".user_#{user.id}").click
    expect(page).to_not have_content(user.email)
    expect(page).to have_content("The User Has Been Deleted")
  end

  scenario 'user can no longer sign in after admin deletes them' do
    user = FactoryGirl.create(:user)
    admin = FactoryGirl.create(:user, admin: true)

    sign_in_as(admin)
    visit root_path
    click_link ('Manage Users')
    find(".user_#{user.id}").click
    visit root_path
    click_link 'Sign Out'
    sign_in_as(user)
    expect(page).to have_content('Invalid email or password')
  end

  scenario 'nonadmin cannot delete user' do
    user = FactoryGirl.create(:user)
    FactoryGirl.create(:user)
    admin = FactoryGirl.create(:user, admin: true, email: "Admin@Voight.com")

    sign_in_as(user)
    visit root_path

    expect(page).to_not have_content("Manage Users")
  end
end
