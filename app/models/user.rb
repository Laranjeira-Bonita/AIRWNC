class User < ApplicationRecord
  has_many :bathrooms
  has_many :bookings
  has_many :rented_bathrooms, through: :bookings, source: :bathroom
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
