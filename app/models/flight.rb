class Flight < ApplicationRecord
  belongs_to :flight_route

  def name
    "#{airline.to_s.upcase} #{flight_number}"
  end
end
