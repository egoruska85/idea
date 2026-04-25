class Work < ApplicationRecord
  has_many_attached :images
  belongs_to :service
end
