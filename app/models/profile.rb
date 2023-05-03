class Profile < ApplicationRecord
    has_many :tweet, dependent: :destroy
end
