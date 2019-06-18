require 'rails_helper'

RSpec.describe "movies/index", type: :view do
let!(:user){create(:user)} 
  it "should have a id" do
    expect(user.id).to_not eq(nil)
  end
  it "should have a password" do
    expect(user.password).to_not eq(nil)
  end

  it "should have a email" do
    expect(user.email).to_not eq(nil)
  end
  it "should have an username" do
    expect(user.username).to_not eq(nil)
  end

end
