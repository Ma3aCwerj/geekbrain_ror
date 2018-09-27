class Mark < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :mark, presence: true
  validates :user, presence: true
  validates :post, presence: true
end
