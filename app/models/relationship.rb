class Relationship < ApplicationRecord
  # フォローするユーザに結びついている
  belongs_to :following, class_name: "User"
  # フォローされるユーザに結びついている
  belongs_to :follower, class_name: "User"
end
