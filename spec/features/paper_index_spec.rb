require 'rails_helper'

describe "New Paper page", :type => :feature do 
	it "should render" do
		visit new_paper_path
	end

	it "should have text input for title, venue, year" do
		visit new_paper_path
		expect(page).to have_field("paper_title")
		expect(page).to have_field("paper_venue")
		expect(page).to have_field("paper_year")
	end
		
	
end

