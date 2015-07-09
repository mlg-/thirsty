require "rails_helper"

feature 'administrator user can delete a bar', %{
  As an administrator
  I want to delete a bar
  Because the information is no longer correct

  Acceptance Criteria
  [x] Admin can delete a bar
  [x] User cannot delete a bar
  [x] Bar is no longer in database
  [x] Bar details page no longer exists
  [x] Reviews of this bar no longer exist
  } do

  scenario 'administrator can delete a bar' do
    admin = FactoryGirl.create(:user, admin: true)
    bar = FactoryGirl.create(:bar)

    sign_in_as(admin)

    visit bar_path(bar)

    click_link("Delete")

    expect(page).to have_content("Bar deleted")
    expect(page).to_not have_content(bar.name)
  end

  scenario 'nonadmin user cannot see deletion link of review' do
    user = FactoryGirl.create(:user)
    bar = FactoryGirl.create(:bar)

    sign_in_as(user)

    visit bar_path(bar)

    expect(page).to_not have_content("Delete")
  end

  scenario 'bar details page no longer exists' do
    admin = FactoryGirl.create(:user, admin: true)
    bar = FactoryGirl.create(:bar)

    sign_in_as(admin)

    visit bar_path(bar)

    click_link("Delete")

    expect(page).to_not have_content(bar.name)
  end
end
