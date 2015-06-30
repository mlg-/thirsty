require 'rails_helper'

feature 'user can view a list of bars', %{
  Acceptance Criteria
[] User can see a list of all bars sorted most recently created
[] User does not have to be logged in to see a list of bars
} do

  scenario 'user visits home page' do
    create_list(:bar, 3)
    visit '/'

    expect(page).to have_content('Boston Bars')
    expect(page).to have_content(bar1.name)
    expect(page).to have_content(bar2.name)
    expect(page).to have_content(bar3.name)

  end
end
