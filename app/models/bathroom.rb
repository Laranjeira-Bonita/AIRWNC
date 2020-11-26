class Bathroom < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  has_many :clients, through: :bookings
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  validates :price, presence: true
  validates :description, presence: true
  validates :address, presence: true, length: { maximum: 95 }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
