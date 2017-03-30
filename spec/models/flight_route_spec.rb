require 'rails_helper'

RSpec.describe FlightRoute, type: :model do
  it "exists" do
    assert FlightRoute
  end

  it "can be created" do
    route = FlightRoute.new(origin: "DCA", destination: "LAX", food: true)

    expect(route.save).to eq true
  end

  it "requires an origin to be present" do
    route = FlightRoute.new(origin: "Q", destination: "LAX", food: true)

    expect(route.valid?).to eq false
    expect(route.errors).to include :origin
  end
end
