class Mark < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :grade, presence: true
  validates :user, presence: true
  validates :post, presence: true
end
