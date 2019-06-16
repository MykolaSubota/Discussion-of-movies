FactoryBot.define do
  factory :movie do
    title {"Test title"}
    description { "Some Description" }
    genre { "Genre" }
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/pic1.jpg'), 'pic1/jpeg')}
    movie_gallery {Rack::Test::UploadedFile.new(Rails.root.join('spec/support/pic2.jpg'), 'pic2/jpeg')}
    year { 1234 }
    nation { "Some Country" }
    director { "Name Surname" }
    actors { "Name Surname, Name Surname, Name Surname" }
  end
end
