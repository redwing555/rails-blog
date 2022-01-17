class Post < ApplicationRecord
  has_many :likes
  has_many :comments

  belongs_to :author, class_name: 'User'
  after_save :post_counter

  def recent_comments
    comments.limit(5).order(created_at: :desc)
  end

  private

  def post_counter
    author.increment!(:posts_counter)
  end
end
