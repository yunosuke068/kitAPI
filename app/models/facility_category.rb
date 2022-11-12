class FacilityCategory < ApplicationRecord
    has_many :facilities
    has_many :categories
end
