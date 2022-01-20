class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 250}
  validates :comments_counter, numericality: {only_integer: true, greated_than_or_equal_to: 0}
  validates :likes_counter, numericality: {only_integer: true, greated_than_or_equal_to: 0}


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
