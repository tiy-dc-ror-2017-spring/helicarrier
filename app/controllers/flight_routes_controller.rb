class FlightRoutesController < ApplicationController
  before_action :set_flight_route, only: [:show, :edit, :update, :destroy]

  # GET /flight_routes
  def index
    @flight_routes = FlightRoute.all
  end

  # GET /flight_routes/1
  def show
  end

  # GET /flight_routes/new
  def new
    @flight_route = FlightRoute.new
  end

  # GET /flight_routes/1/edit
  def edit
  end

  # POST /flight_routes
  def create
    @flight_route = FlightRoute.new(flight_route_params)

    if @flight_route.save
      redirect_to @flight_route, notice: 'Flight route was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /flight_routes/1
  def update
    if @flight_route.update(flight_route_params)
      redirect_to @flight_route, notice: 'Flight route was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /flight_routes/1
  def destroy
    @flight_route.destroy
    redirect_to flight_routes_url, notice: 'Flight route was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight_route
      @flight_route = FlightRoute.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def flight_route_params
      params.require(:flight_route).permit(:origin, :destination, :food)
    end
end
