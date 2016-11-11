require 'rails_helper'

describe "Edit author page", :type => :feature do
	it "should render" do
		author = create(:author)
		visit edit_author_path(author)

	end

	it "should save changes" do
		@author = create(:author)
		visit edit_author_path(@author)
		fill_in 'author_first_name', with: "Alan Mathison"
		fill_in 'author_homepage', with: "http://wikipedia.org/Alan_Turing"

		click_button 'Save Author'
		Author.find_by! first_name: "Alan Mathison"
		Author.find_by! last_name: "Turing"
		Author.find_by! homepage: "http://wikipedia.org/Alan_Turing"
	end
end

