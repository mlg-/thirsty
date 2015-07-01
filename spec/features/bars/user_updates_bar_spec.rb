require 'rails_helper'

feature "user can update a bar's information", %{
  As an authenticated user
  I want to update an bar's information
  So that I can correct errors or provide new information
} do

  #  Acceptance Criteria
  # [x] User can navigate to a page and change bar’s details except name and address
  # [] User is redirected to bar detail page and can see their changes

  scenario 'user can navigate to a bar\'s edit page' do
    bar = FactoryGirl.create(:bar)

    visit bar_path(bar.id)
    click_link("Edit")

    expect(page).to have_content("Edit #{bar.name}")
    find_button("Submit Changes")
  end


end
