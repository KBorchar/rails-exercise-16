
require 'rails_helper'

describe "Author page", :type => :feature do
  
  it "should render, given an author named 'Alan Turing'" do
    author = create:author
	  visit author_path(author)
      end
end
