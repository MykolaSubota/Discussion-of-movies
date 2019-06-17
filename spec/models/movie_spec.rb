require 'rails_helper'

RSpec.describe Movie, type: :model do
 let!(:user){create(:user)}

  context "validation" do

    it "should not be valid without title" do
       subject.title = nil
       expect(subject).to_not be_valid
    end

    it { should validate_presence_of(:title) }

    it "should not be valid without description" do
       subject.description = nil
       expect(subject).to_not be_valid
    end

    it { should validate_presence_of(:description) }

    it "should not be valid without genre" do
       subject.genre = nil
       expect(subject).to_not be_valid
    end

    it { should validate_presence_of(:genre) }

    it "should not be valid without image" do
       subject.image = nil
       expect(subject).to_not be_valid
    end

    it { should validate_presence_of(:image) }

    it "should not be valid without movie_gallery" do
       subject.movie_gallery = nil
       expect(subject).to_not be_valid
    end

    it { should validate_presence_of(:movie_gallery) }

    it "should not be valid without year" do
       subject.year = nil
       expect(subject).to_not be_valid
    end

    it { should validate_presence_of(:year) }

    it "should not be valid without nation" do
       subject.nation = nil
       expect(subject).to_not be_valid
    end

    it { should validate_presence_of(:nation) }

    it "should not be valid without director" do
       subject.director = nil
       expect(subject).to_not be_valid
    end

    it { should validate_presence_of(:director) }

    it "should not be valid without actors" do
       subject.actors = nil
       expect(subject).to_not be_valid
    end

  end

end