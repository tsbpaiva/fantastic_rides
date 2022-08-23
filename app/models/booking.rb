class Booking < ApplicationRecord
  STATUS = ["pending", "confirmed","declined"].freeze
  belongs_to :user
  belongs_to :ride
  validates :status, inclusion: { in: STATUS }
end
