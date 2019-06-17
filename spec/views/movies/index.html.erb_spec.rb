require 'rails_helper'

RSpec.describe "movies/index", type: :view do
let!(:user){create(:user)} 
let!(:user) { build(:user, email: "test@gmail.com", username: "username") }


  it "should have a email" do
    expect(user.email).to_not eq(nil)
  end
  it "should have an username" do
    expect(user.username).to_not eq(nil)
  end

end
