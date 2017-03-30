class Flight < ApplicationRecord
  belongs_to :flight_route

  def name
    "#{airline.to_s.upcase} #{flight_number}"
  end

  def mark_as_arrived!
    return if arrived_at
    FlightMailer.arrive(self, "russell@theironyard.com").deliver_now
    self.arrived_at = Time.zone.now
    save
  end
end
