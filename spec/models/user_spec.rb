require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user){create(:user)}
  

    describe "validation" do
    it "should have a username" do
    expect(user.username).to_not eq(nil)
  end	

  end
  describe "associations" do
    it { should have_many(:impressions)}
  end
end
