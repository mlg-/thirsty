require 'rails_helper'

feature 'user searches for a bar', %{
  As a user
  I want to search for bars
  So I find the ones that meet my needs
} do

  #  Acceptance Criteria
  # [x] User can search for bar
  # [x] Search returns list of bars matching users search criteria

  scenario 'user searches for a bar' do
    bar = FactoryGirl.create(:bar)
    bar2 = FactoryGirl.create(:bar, name: "The Other Bar")

    visit root_path
    fill_in "search", with: "Mayos"

    click_button "Search"

    expect(page).to have_content(bar.name)
    expect(page).to_not have_content(bar2.name)
  end

  scenario 'user searches for the partial name of a bar' do
    bar = FactoryGirl.create(:bar)
    bar2 = FactoryGirl.create(:bar, name: "The Other Bar")

    visit root_path
    fill_in "search", with: "May"

    click_button "Search"

    expect(page).to have_content(bar.name)
    expect(page).to_not have_content(bar2.name)
  end

  scenario 'user searches for a bar attribute to see which bars include it' do
    bar = FactoryGirl.create(:bar, city: "Dusseldorf")
    bar2 = FactoryGirl.create(:bar)

    visit root_path
    fill_in "search", with: bar.city

    click_button "Search"

    expect(page).to have_content(bar.name)
    expect(page).to_not have_content(bar2.name)
  end

end
