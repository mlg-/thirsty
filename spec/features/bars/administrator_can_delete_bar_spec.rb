require "rails_helper"

feature 'administrator user can delete a bar', %{
  As an administrator
  I want to delete an bar
  So that no one can review it
  } do
    #Acceptance Criteria
#   [X] Administrator can delete bars from bar details page
#   [X] Bar is no longer visible on index page
#   [X] A user cannot delete a bar

  scenario 'administrator can delete a bar' do
    admin = FactoryGirl.create(:admin)
    bar = FactoryGirl.create(:bar)

    visit new_user_session_path

    fill_in 'Email', with: admin.email
    fill_in 'Password', with: admin.password

    click_button 'Log in'

    visit bar_path(bar.id)

    click_link("Delete")

    expect(page).to have_content("Bar deleted")
    expect(page).to_not have_content(bar.name)
  end

  scenario 'user cannot delete bar' do
    user = FactoryGirl.create(:user)
    bar = FactoryGirl.create(:bar)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'

    visit bar_path(bar.id)

    expect(page).to_not have_content("Delete")
  end
end
