require "rails_helper"

RSpec.describe FlightRoutesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/flight_routes").to route_to("flight_routes#index")
    end

    it "routes to #new" do
      expect(:get => "/flight_routes/new").to route_to("flight_routes#new")
    end

    it "routes to #show" do
      expect(:get => "/flight_routes/1").to route_to("flight_routes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/flight_routes/1/edit").to route_to("flight_routes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/flight_routes").to route_to("flight_routes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/flight_routes/1").to route_to("flight_routes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/flight_routes/1").to route_to("flight_routes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/flight_routes/1").to route_to("flight_routes#destroy", :id => "1")
    end

  end
end
