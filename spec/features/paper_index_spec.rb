require 'rails_helper'


describe "Paper index page", :type => :feature do
  it "should list all papers " do

    create(:paper)
    visit papers_path
    expect(page).to have_text("COMPUTING MACHINERY AND INTELLIGENCE")

  end
end
