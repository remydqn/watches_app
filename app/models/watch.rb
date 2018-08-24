class Watch < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :address, presence: true
  validates :user, presence:true
  validates :name, presence: true, uniqueness: true
  validates :description, length: {minimum: 5, maximum: 100}, allow_blank: true, presence: true
  # validates :brand
  # , inclusion: { in: ["Rolex", "Richard mille", "Cartier", "Patek Philippe", "Audemars Piguet", "Blancpain", "Seiko", "Hublot", "Breitling"]}
  # validates :color
  # , inclusion: { in: %w(Yellow Gold White Black Blue Red Grey Brown)}
  # validates :style
  # , inclusion: { in: ["City Chic", "Sportswear", "Ceremony", "Vintage", "Design", "Bling Bling"]}
  # validates :gender
  # , inclusion: { in: %w(Man Woman Unisex)}
  # validates :material
  # , inclusion: { in: %w(Carbonne Leather Acier Silicone Gold Diamonds Silver)}
  # # validates :image
  validates :price, numericality: true
  mount_uploader :image, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
