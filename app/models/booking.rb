class Booking < ApplicationRecord
  belongs_to :client, class_name: 'User', foreign_key: 'user_id'
  belongs_to :bathroom
  has_one :owner, through: :bathroom
  validates :date, presence: true
  validates :duration, presence: true, inclusion: { in: [15, 20, 25, 30, 35, 40, 45] }
  validates :bathroom, presence: true
  has_many :photos, through: :bathroom
  has_one :review, dependent: :destroy
end
