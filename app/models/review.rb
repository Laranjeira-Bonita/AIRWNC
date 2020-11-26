class Review < ApplicationRecord
  belongs_to :booking
  has_one :bathroom
  validates :content, :rating, presence: true
end
