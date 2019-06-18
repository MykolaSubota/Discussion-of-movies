require 'rails_helper'

RSpec.describe Impression, type: :model do
  let!(:user){create(:user)}

  context "validation" do

    it "should not be valid without body" do
       subject.body = nil
       expect(subject).to_not be_valid
    end

    it { should validate_presence_of(:body) }
  end
  describe "associations" do
    it { should belong_to(:user)}
    it { should belong_to(:movie)}
  end
end
