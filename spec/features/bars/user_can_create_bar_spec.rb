require 'rails_helper'

feature 'user can create a new bar', %{
  Acceptance Criteria
  [] User can navigate to a page to fill out a form to add a new bar
  [] User must be logged in to add a bar
  [] Form must have name and address
  [] User receives error if form is not filled out correctly
  [] User redirect to index once bar is created
  [] User receives error if tries to add a bar without being logged in
  [] User receives error if bar already exists in database
  } do

  scenario 'user can navigate to new bar form' do
    visit '/'
    click_link("Add New Bar")
  end

  scenario 'user can create a new bar' do
    bar = FactoryGirl.create(:bar)
    bar_2 = FactoryGirl.create(:bar)

    visit new_bar_path

    fill_in "Name", with: "Mayo's Frozen Baaaaaaahhh"
    fill_in "Address", with: bar.address
    fill_in "City", with: bar.city
    select bar.state, from: "State"
    fill_in "Zip", with: bar.zip
    fill_in "Description", with: bar.description
    fill_in "Url", with: bar.url
    fill_in "Photo url", with: bar.photo_url
    fill_in "Seating capacity", with: bar.seating_capacity
    select "Yes", from: "Food"
    select "No", from: "Outdoor seating"
    select "Yes", from: "Pet friendly"
    click_button("Submit")

    expect(page).to have_content("Boston Bars")
    expect(page).to have_content(bar.name)
    expect(page).to have_content(bar_2.name)
  end
end
