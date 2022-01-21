require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'comment model methods' do
    user1 = User.new
      post1 = Post.new(title: 'post_test', text:"this is post test", author:user1, likes_counter:8)
    subject do
      Comment.new
    end

    before {subject.save}

    it "title presence" do
      subject.text = nil
      expect(subject).to_not be_valid
    end

    describe "comments model method" do
      it "should update comments count" do
        post1.comments_counter = 2
        subject.post = post1
        expect(subject.comments_counter.comments_counter).to eq 3
      end
    end
  end
end
