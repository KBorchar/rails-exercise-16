require 'rails_helper'

describe "Author index page", :type => :feature do
	it "should render " do
		
		create(:author)
		visit authors_path	
		expect(page).to have_text("Alan Turing") 

	end

	it "should link to the new author page" do
		visit authors_path
		expect(page).to have_css("a", :text => "Add author")
	end

	it "should link to edit author page" do
		create(:author)
		visit authors_path
		expect(page).to have_css("a", :text => "Edit")
	end	

	it "should link to destroying and author" do
		create(:author)
		visit authors_path
		expect(page).to have_css("a", :text => "Destroy")
	end 
	
	it "should delete an author whos destroy button got clicked." do
		create(:author)
		visit authors_path
		click_link 'Destroy'
		
		expect(Author.first).to be_nil	
	end
end


