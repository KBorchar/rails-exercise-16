require 'rails_helper'

describe "Author Page", type => feature do

	it "should show the author's first name" do
		author = create(:author)
		visit author_path(author)
		expect(page).to have_text("Alan")
	end
end

