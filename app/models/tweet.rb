class Tweet < ApplicationRecord
    belongs_to :profile, dependent: :destroy
    belongs_to :user, dependent: :destroy
end
