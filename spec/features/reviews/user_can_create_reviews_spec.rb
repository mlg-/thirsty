require 'rails_helper'

feature 'user can create a review for a bar', %{
  Acceptance Criteria
[] User can navigate to a page to fill out a form to review a bar
[] User must be logged in to review a bar
[] Form must have title, rating, and body
[] User receives error if form is not filled out correctly
[] User redirect to bar details page once review is created
[] User receives error if they try to review a bar without being logged in
  } do

  scenario 'user can navigate to create a review' do
    visit '/'
  end

  # scenario 'user can create a review for a bar' do
  #   review = FactoryGirl.build(:review)
  # end

end