require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'comment model methods' do
    subject do
      Comment.new
    end

    before {subject.save}

    it "title presence" do
      subject.text = nil
      expect(subject).to_not be_valid
    end
  end
end
