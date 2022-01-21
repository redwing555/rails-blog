require 'rails_helper'

RSpec.describe Like, type: :model do
  user1 = User.new
  post1 = Post.new(title: 'post_test', text: 'this is post test', author: user1)
  subject do
    Like.new
  end

  before { subject.save }
  describe 'likes model method' do
    it 'should update likes count' do
      post1.likes_counter = 2
      subject.post = post1
      expect(subject.likes_counter.likes_counter).to eq 3
    end
  end
end
