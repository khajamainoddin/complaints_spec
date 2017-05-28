require 'spec_helper'
require 'rails_helper'

feature "Deleting complaints" do
	scenario "Deleting a complaint" do
		FactoryGirl.create(:complaint, name: "khaja")

		visit '/'

		click_link "khaja"
		click_link "Delete Complaint"

		expect(page).to have_content("Complaint has been destroyed.")

		visit '/'

		expect(page).to have_no_content("khaja")

	end

end
