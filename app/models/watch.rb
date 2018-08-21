class Watch < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :location, presence: true
  validates :user, presence:true
  validates :name, presence: true, uniqueness: true
  validates :description, length: {minimum: 5, maximum: 100}, allow_blank: true, presence: true
  validates :brand, inclusion: { in: %w(rolex richar_mille cartier patek_philippe audemars piguet blancpain seiko hublot  )}
  validates :color, inclusion: { in: %w(yellow gold white black blue red grey brown)}
  validates :style, inclusion: { in: %w(city_chic sportswear vintage ceremony vintage design bling_bling)}
  validates :gender, inclusion: { in: %w(man women)}
  validates :material, inclusion: { in: %w(carbonne leather acier silicone gold diamonds silver)}
  validates :image, presence: true
  validates :price, numericality: true

end
