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

  scenario 'user sees 10 bars per page' do
    first_bar = FactoryGirl.create(:bar)
    test_bars = FactoryGirl.create_list(:bar, 10)
    visit '/'

    test_bars.each do |bar|
      expect(page).to have_content(bar.name)
    end

    expect(page).to_not have_content(first_bar.name)
  end

  scenario 'user sees 11th bar on second page' do
    first_bar = FactoryGirl.create(:bar)
    test_bars = FactoryGirl.create_list(:bar, 10)
    visit '/'

    click_link("2")
    expect(page).to have_content(first_bar.name)
    test_bars.each do |bar|
      expect(page).to_not have_content(bar.name)
    end
  end
end
