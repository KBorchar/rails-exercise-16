require 'rails_helper'

describe "Edit paper page", :type => :feature do
  it "should render" do
    paper = create(:paper)
    visit edit_paper_path(paper)

  end

  it "should save changes" do
    @paper = create(:paper)
    visit edit_paper_path(@paper)
    fill_in 'paper_venue', with: "Mind 49"

    click_button 'Save Paper'
    Paper.find_by! venue: "Mind 49"
    #Author.find_by! last_name: "Turing"
    #Author.find_by! homepage: "http://wikipedia.org/Alan_Turing"
  end

  it "should allow to select 5 authors from 5 separate drop downs" do
    p = create(:paper)
    visit edit_paper_path(p)
    expect(page).to have_field("Author 1")
    expect(page).to have_field("Author 2")
    expect(page).to have_field("Author 3")
    expect(page).to have_field("Author 4")
    expect(page).to have_field("Author 5")
  end

  it "should preselect the atcual authors in the drop downs" do
    create(:author)
    p = create(:paper)
    visit edit_paper_path(p)
    expect(page).to have_select("Author 1", selected: "Alan Turing")
  end

end