class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 25, minimum: 2 }
  validates :name, uniqueness: true

  has_many :posts
  has_many :comments
  
end
