class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  attachment :profile_image
  has_many :comics, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  validates :username, presence: true
  
  def liked?(comic)
    self.likes.exists?(comic_id: comic.id)
  end
  
  def favorited?(comic)
    self.favorites.exists?(comic_id: comic.id)
  end
  
end
