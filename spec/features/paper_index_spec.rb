require 'rails_helper'


describe "Paper index page", :type => :feature do
  it "should list all papers " do

    create(:paper)
    visit papers_path
    expect(page).to have_text("COMPUTING MACHINERY AND INTELLIGENCE")

  end

  it "should link to the new paper page" do
    visit papers_path
    expect(page).to have_css("a", :text => "Add paper")
  end
end
