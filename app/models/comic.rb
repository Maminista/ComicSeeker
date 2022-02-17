class Comic < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :image
  
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
end
