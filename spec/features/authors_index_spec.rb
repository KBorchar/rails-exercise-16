require 'rails_helper'

describe "Author index page", :type => :feature do
	it "should render " do
		
		create(:author)
		visit authors_path	
		expect(page).to have_text("Alan Turing") 

	end

	it "should link to the new author page" do
		visit authors_path
		expect(page).to have_css("a", text: "Add Author")
	end
end


