class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  attachment :profile_image
  has_many :comics, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  # フォローする側から中間テーブルへのアソシエーション
  has_many :relationships, foreign_key: :following_id
  # フォローする側からフォローされたユーザを取得する
  has_many :followings, through: :relationships, source: :follower
  # フォローされる側から中間テーブルへのアソシエーション
  has_many :reverse_of_relationships, class_name: "Relationship", foreign_key: :follower_id
  # フォローされる側からフォローしているユーザを取得する
  has_many :followers, through: :reverse_of_relationships, source: :following
  
  validates :username, presence: true
  
  validates :comment_text, presence: true, length: { maximum: 1000 }
  
  def liked?(comic)
    self.likes.exists?(comic_id: comic.id)
  end
  
  def favorited?(comic)
    self.favorites.exists?(comic_id: comic.id)
  end
  
  # あるユーザが引数で渡されたuserにフォローされているか調べるメソッド
  def is_followed_by?(user)
    reverse_of_relationships.find_by(following_id: user.id).present?
  end
  
end
