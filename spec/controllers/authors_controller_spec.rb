require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do

  describe "GET #NewAuthorPage" do
    it "returns http success" do
      get :NewAuthorPage
      expect(response).to have_http_status(:success)
    end
  end

end
