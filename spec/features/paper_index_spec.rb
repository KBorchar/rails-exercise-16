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

  it "should link to edit paper page" do
    create(:paper)
    visit papers_path
    expect(page).to have_css("a", :text => "Edit")
  end

  it "should link to destroying a paper" do
    create(:paper)
    visit papers_path
    expect(page).to have_css("a", :text => "Destroy")
  end

  it "should delete a paper whos destroy button got clicked." do
    create(:paper)
    visit papers_path
    click_link 'Destroy'

    expect(Paper.first).to be_nil
  end

  it "should allow filter by year" do
  create(:paper)
  create(:paper, year: 1968, title: 'go to statement considered harmful')
  visit papers_path(year: 1950)
  expect(page).not_to have_text("go to statement considered harmful")
  end

end

