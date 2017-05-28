require 'spec_helper'
require 'rails_helper'

feature "Editing Complaints" do
    before do

    	FactoryGirl.create(:complaint, name: "khaja")

		visit '/'

		click_link "khaja"
		click_link "Edit Complaint"

	end

	scenario "Updating a complaint" do
		
		
		fill_in "Name", with: "khaja"
		click_button "Update Complaint"

		expect(page).to have_content("Complaint has been updated.")

	end

	scenario "Updating a complaint with invalid attributes is bad" do
		fill_in "Name", with: ""
		click_button "Update Complaint"

		expect(page).to have_content("Complaint has not been updated.")

	end
	
end
