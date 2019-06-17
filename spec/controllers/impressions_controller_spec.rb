require 'rails_helper'

RSpec.describe ImpressionsController, type: :controller do
let!(:user) { build(:user, email: "test@gmail.com", username: "username") }

login_user

  it "should have a current_user" do
    expect(subject.current_user).to_not eq(nil)
  end
  it "should have an username" do
    expect(subject.current_user.username).to_not eq(nil)
  end
end
