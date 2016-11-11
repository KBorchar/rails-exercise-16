require 'rails_helper'

describe "New Author Page", :type => :feature do

  it 'should be able to save an author' do
    visit new_author_path
    fill_in 'author_first_name', with: "Alan"
    fill_in 'author_last_name', with: "Turing"
    fill_in 'author_homepage', with: "http://wikipedia.org/Alan_Turing"
    click_button 'Save Author'

    Author.find_by_first_name "Alan"
    Author.find_by_last_name "Turing"
    Author.find_by_homepage "http://wikipedia.org/Alan_Turing"

  end

  it "should have text input for first name, last name, and homepage" do
    visit new_author_path
    expect(page).to have_field("First name")
    expect(page).to have_field("Last name")
    expect(page).to have_field("Homepage")
  end
  it "should show validation errors" do
    visit new_author_path 
    fill_in 'author_first_name', with: "Alan"
    fill_in 'author_homepage', with: "http://wikipedia.org/Alan_Turing"
    click_button 'Save author'
    expect(page).to have_text("last name can't be blank")
  end
end
