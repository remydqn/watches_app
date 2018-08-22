class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :watch

 validates :user_id, :watch_id, :start_at, presence: true



end
