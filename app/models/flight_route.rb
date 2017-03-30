class FlightRoute < ApplicationRecord
  has_many :flights
  validates :origin, presence: true, length: { in: 3..4 }
  validates :destination, presence: true, length: { in: 3..4 }
  # validates :food, presence: true
end
