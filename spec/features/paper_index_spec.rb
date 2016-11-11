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
	it "should be able to save a paper with title, venue and year" do
		visit new_paper_path
		fill_in 'paper_title', with: "COMPUTING MACHINERY AND INTELLIGENCE"
		fill_in 'paper_venue', with: "Mind 49: 433-460"
		fill_in 'paper_year', with: "1950"
		click_button 'Save Paper'

		Paper.find_by_title "COMPUTING MACHINERY AND INTELLIGENCE"
		Paper.find_by_venue "Mind 49: 433-460"
		Paper.find_bye_year "1950"
	end
		
	
end

