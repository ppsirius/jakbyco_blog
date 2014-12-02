class Post < ActiveRecord::Base
  validates :title, presence: true
  before_create :publish

  scope :published_posts, -> { where(published: true) }
  scope :desc, -> { order(created_at: :desc) }

  def publish
    self.published = true
  end
end
