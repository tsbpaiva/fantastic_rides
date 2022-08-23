class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :rides
  has_many :rides, through: :bookings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, :password, presence: true
  validates :email, uniqueness: true
end
