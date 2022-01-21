require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validation' do
    subject do
      Post.new
    end

    before {subject.save}

    it "title presence" do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it "title should not exceed 250 char" do
      subject.title = "post 1"*251
      expect(subject).to_not be_valid
    end

    it "comments counter should be integer " do
      subject.comments_counter = 1.7
    expect(subject).to_not be_valid
    end

    it "comments counter should be greater or equal to 0 " do
      subject.comments_counter = -1
    expect(subject).to_not be_valid
    end

    it "Likes counter should be integer " do
      subject.likes_counter = 1.7
    expect(subject).to_not be_valid
    end

    it "Likes counter should be greater or equal to 0 " do
      subject.likes_counter = -1
    expect(subject).to_not be_valid
    end
  end
end
