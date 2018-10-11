class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :name, length: { maximum: 25, minimum: 2 }
  validates :name, uniqueness: true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy  
  
end
