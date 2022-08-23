class Booking < ApplicationRecord
  after_initialize :default_values

  STATUS = ["pending", "confirmed", "declined"].freeze
  belongs_to :user
  belongs_to :ride
  validates :status, inclusion: { in: STATUS }

  private

  def default_values
    self.status ||= "pending"
  end
end
