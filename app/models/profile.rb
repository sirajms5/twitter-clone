class Profile < ApplicationRecord
    has_many :post, dependent: :destroy
end
