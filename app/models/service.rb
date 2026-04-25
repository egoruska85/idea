class Service < ApplicationRecord
  has_one_attached :icon
  has_many :works
end
