require 'rails_helper'

feature 'user can view a list of bars', %Q{
	Acceptance Criteria
[] User can see a list of all bars sorted most recently created
[] User does not have to be logged in to see a list of bars
} do 

	scenario 'user visits home page' do
		visit '/'

		expect(page).to have_content('Boston Bars')
	end
end
