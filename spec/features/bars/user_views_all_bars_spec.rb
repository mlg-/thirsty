require 'rails_helper'

feature 'user can view a list of bars', %{
  As a user
  I want see a list of all the bars
  So I can find a bar to visit
} do

  #   Acceptance Criteria
  # [x] User can see a list of all bars sorted most recently created
  # [x] User does not have to be logged in to see a list of bars

  scenario 'user visits home page' do
    test_bars = FactoryGirl.create_list(:bar, 3)
    visit '/'

    expect(page).to have_content('Thirsty?')
    expect(page).to have_content(test_bars[0].name)
    expect(page).to have_content(test_bars[1].name)
    expect(page).to have_content(test_bars[2].name)
    expect(page.body.index(test_bars[2].name)).to be < page.body.index(
      test_bars[0].name)
  end

  scenario 'user sees 10 bars per page, can change pages' do
    test_bars = FactoryGirl.create_list(:bar, 11)
    visit '/'

    expect(page).to have_content(test_bars[9].name)
    expect(page).to_not have_content(test_bars[0].name)

    click_link("Next")

    expect(page).to have_content(test_bars[0].name)
    expect(page).to_not have_content(test_bars[9].name)
  end
end
