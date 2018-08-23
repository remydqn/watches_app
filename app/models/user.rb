class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :watches
  has_many :customer_bookings, class_name:"Booking"
  has_many :owner_bookings, through: :watches, source: :bookings



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :image, presence: true
end
