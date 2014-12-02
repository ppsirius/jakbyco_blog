class Post < ActiveRecord::Base
  validates :title, presence: true
  before_save :publish

  def publish
    self.published = true
  end
end
