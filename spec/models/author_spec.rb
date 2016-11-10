require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "#name" do
    it "returns the full name" do
      bruv = build(:author)
      expect(bruv.name).to eq("Alan Turing")
    end

    it "should not validate w/o last name" do
      a = build(:author, last_name: nil)
      expect(a).not_to be_valid
    end
  end
end
