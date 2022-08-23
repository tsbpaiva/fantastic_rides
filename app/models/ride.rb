class Ride < ApplicationRecord

  belongs_to :user
  has_many :users, through: :bookings
  validates :title, :starting_point, :destination, :price, :seats, presence: true


end
