require 'rails_helper'

feature "user can update a bar's information", %{
  As an authenticated user
  I want to update an bar's information
  So that I can correct errors or provide new information
} do

  #  Acceptance Criteria
  # [x] User can navigate to a page and
  #     change bar’s details except name and address
  # [x] User must be logged in to change bar details
  # [x] User views form prepopulated with bar details
  # [X] User is redirected to bar detail page and can see their changes

  scenario 'user can navigate to a bar\'s edit page' do
    bar = FactoryGirl.create(:bar)
    user = FactoryGirl.create(:user)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'

    visit bar_path(bar.id)
    click_link("Edit")

    expect(page).to have_content("Edit #{bar.name}")
    find_button("Submit Changes")
  end

  scenario 'user views form prepopulated with bar details' do
    bar = FactoryGirl.create(:bar)
    user = FactoryGirl.create(:user)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'

    visit bar_path(bar.id)
    click_link("Edit")

    (find_field('Description').value || "#{bar.description}")
    (find_field('Seating capacity').value || "#{bar.seating_capacity}")
  end

  scenario 'user sees thier updates on bar details page' do
    bar = FactoryGirl.create(:bar)
    user = FactoryGirl.create(:user)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    click_button 'Log in'

    visit bar_path(bar.id)
    click_link("Edit")

    fill_in "Description", with: "THIS BARTENDER IS UNDERAGED"

    click_button "Submit Changes"

    expect(page).to have_content("THIS BARTENDER IS UNDERAGED")
    expect(page).to have_content("Bar updated!")
  end

  scenario 'user sees error message if try to edit and not logged in' do
    bar = FactoryGirl.create(:bar)

    visit bar_path(bar.id)
    click_link("Edit")

    expect(page).to have_content("You must be signed in to do that")
  end
end
