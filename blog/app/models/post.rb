class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :user, presence: true

  has_many :comments
  has_many :users, through: :comments

  scope :moderators_post, -> { joins(:user).where(users: {moderator: true})}

  def self.moderators_post_
    joins(:user).where(users: {moderator: true})
  end
end