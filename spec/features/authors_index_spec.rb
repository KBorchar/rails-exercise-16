require 'rails_helper'

describe "Author index page", :type => :feature do
	it "should render " do
		visit authors_path
		expect(page).to have_text("Alan Turing") 

	end
end


