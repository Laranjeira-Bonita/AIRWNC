class User < ApplicationRecord
  has_many :bathrooms
  has_many :bookings
  has_many :rented_bathrooms, through: :bookings, source: :bathroom
  validates :first_name, :last_name, :cpf, :phone_number, presence: true
  validates :cpf, format: { with: /\d{3}\.\d{3}\.\d{3}-\d{2}/,
  message: "only accepts format XXX.XXX.XXX-XX" }
  validates :phone_number, format: { with: /\(\d{2}\)\d{4,5}-\d{4}/,
  message: "only accepts format (XX)XXXXX-XXXX" }
  validates :cpf, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
