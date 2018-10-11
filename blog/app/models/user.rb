class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 25, minimum: 2 }
  validates :name, uniqueness: true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy  
  
end
