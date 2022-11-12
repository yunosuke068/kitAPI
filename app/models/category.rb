class Category < ApplicationRecord
    has_many :facility_categories
    has_many :facilities, through: :facility_categories
end
