class Profile < ApplicationRecord
    has_many :tweets, dependent: :destroy
end
