class Ride < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings, dependent: :destroy
  validates :title, :starting_point, :destination, :price, :seats, presence: true
end
