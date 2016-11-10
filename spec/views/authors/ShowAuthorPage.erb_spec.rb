require 'rails_helper'

describe "Author page", :type => :feature  do

	it "should show the author's first name, last name and homepage" do
		author = create(:author)
		visit author_path(author)
		expect(page).to have_text("Alan")
		expect(page).to have_text("Turing")
		expect(page).to have_text("http://wikipedia.de/Alan_Turing")
	end
end

