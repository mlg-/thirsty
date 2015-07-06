require 'rails_helper'

feature 'user can view a list of bars', %{
  As a visitor
  I want to view the details about an bar
  So that I can get more information about it
} do

  # Acceptance Criteria
  # [X] Visitor can select a bar and can see name and address of bar

  scenario 'user visits home page' do
    bar = FactoryGirl.create(:bar)
    user = FactoryGirl.create(:user)

    sign_in_as(user)

    visit bar_path(bar)

    expect(page).to have_content(bar.name)
    expect(page).to have_content(bar.address)
  end
end
