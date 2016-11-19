
require 'rails_helper'

describe "Paper page", :type => :feature do

  it "should render" do
    p = create(:paper)
    visit paper_path(p)
  end

  it "should list the authors" do
    p = create(:paper)
    visit paper_path(p)
    expect(page).to have_text("Alan Turing")
  end

end