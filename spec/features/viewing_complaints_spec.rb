require 'spec_helper'
require 'rails_helper'

feature "Viewing Complaints" do
	scenario "Listing all Complaints" do
		complaint = FactoryGirl.create(:complaint, name: "khaja")

		visit '/'

		click_link 'khaja'
		expect(page.current_url).to eql(complaint_url(complaint))

	end

end
