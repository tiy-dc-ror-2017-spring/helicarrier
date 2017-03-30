require 'rails_helper'

RSpec.describe "FlightRoutes", type: :request do
  describe "GET /flight_routes" do
    it "works! (now write some real specs)" do
      get flight_routes_path
      expect(response).to have_http_status(200)
    end
  end
end
