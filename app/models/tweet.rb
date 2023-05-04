class Tweet < ApplicationRecord
    belongs_to :profile
    belongs_to :user
    has_many :replies, dependent: :destroy
end
