class Facility < ApplicationRecord
    has_many :facility_categories
    has_many :categories, through: :facility_categories
end
