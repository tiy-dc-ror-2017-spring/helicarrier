class FlightMailer < ApplicationMailer

  def arrive(flight, email)
    @flight = flight
    mail(to: email, subject: "#{flight.name} has arrived!")
  end

end
