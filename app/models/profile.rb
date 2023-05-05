class Profile < ApplicationRecord
    belongs_to :user
    has_many :tweets, dependent: :destroy
    has_many :followers, foreign_key: "followed_id", class_name: "Relationship"
    has_many :following, foreign_key: "follower_id", class_name: "Relationship"
end
