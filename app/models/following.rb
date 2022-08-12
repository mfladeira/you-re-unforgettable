class Following < ApplicationRecord
  has_many :followings_as_following, class_name: "User", foreign_key: :following_id
  has_many :followings_as_follower, class_name: "User", foreign_key: :follower_id
end
