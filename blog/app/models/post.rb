class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :title, length: { maximum: 50, minimum: 5 }
  validates :title, uniqueness: true
  validates :user, presence: true
end
