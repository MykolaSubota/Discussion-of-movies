FactoryBot.define do
  factory :user do
  	username {"username"}
    email {"tester@test.com"}
    password {"tester"}
    avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/pic1.jpg'), 'pic1/jpeg')}
  end
end
