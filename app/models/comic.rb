class Comic < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  attachment :image
  
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
  
  def self.search(keyword)
    where(["title like? OR body like?", "%#{keyword}%", "%#{keyword}%"])
  end
end
