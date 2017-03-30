class FlightsController < ApplicationController
  def index
    @flight_route = FlightRoute.find(params[:flight_route_id])
    @flights = @flight_route.flights
  end

  def new
    @flight_route = FlightRoute.find(params[:flight_route_id])
    @flight = @flight_route.flights.build
  end

  def create
    @flight_route = FlightRoute.find(params[:flight_route_id])
    @flight = @flight_route.flights.build(flight_params)

    if @flight.save
      redirect_to flight_routes_path, notice: "Flight Created!"
    else
      render "new"
    end
  end

  def edit
  end

  def mark_as_arrived
    @flight = Flight.find(params[:id])
    @flight.arrived_at = Time.zone.now
    @flight.save

    redirect_to flight_route_flights_path(@flight.flight_route)
  end

  private def flight_params
    params.require(:flight).permit(
      :flight_number,
      :airline,
      :number_of_passengers,
      :arrived_at,
      :stocked_at,
      :cleaned_at,
      :gate
    )
  end
end
