require 'spec_helper'
require 'rails_helper'

describe "Creating Complaints" do

	before do
		visit '/'

		click_link 'New Complaint'

	end

	scenario "can create a complaint" do
		

		fill_in 'Name', with: 'khaja'
		fill_in 'Section', with: 'tada'
		fill_in 'Problem', with: 'mouse not working'
		click_button 'Create Complaint'

		expect(page).to have_content('Complaint has been created.')

	end

	scenario "can not create a complaint without a name" do
		

		click_button 'Create Complaint'

		expect(page).to have_content("Complaint has not been created.")
		expect(page).to have_content("Name can't be blank")

	end


end
