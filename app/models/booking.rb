class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :watch

 validates :name, :watch, presence: true

end
