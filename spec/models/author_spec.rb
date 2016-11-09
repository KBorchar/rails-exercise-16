require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "#name" do
    it "returns the full name" do
      bruv = build(:author)
      expect(bruv.name).to eq("Alan Turing")
    end
  end
end
