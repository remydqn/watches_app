class Watch < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :location, presence: true
  validates :user, presence:true
  validates :name, presence: true, uniqueness: true
  validates :description, length: {minimum: 5, maximum: 100}, allow_blank: true, presence: true
  validates :brand, inclusion: { in: ["rolex", "richard mille", "cartier", "patek philippe", "audemars piguet", "blancpain", "seiko", "hublot", "breitling"]}
  validates :color, inclusion: { in: %w(yellow gold white black blue red grey brown)}
  validates :style, inclusion: { in: ["city chic", "sportswear", "ceremony", "vintage", "design", "bling bling"]}
  validates :gender, inclusion: { in: %w(man woman)}
  validates :material, inclusion: { in: %w(carbonne leather acier silicone gold diamonds silver)}
  # validates :image
  validates :price, numericality: true

end
