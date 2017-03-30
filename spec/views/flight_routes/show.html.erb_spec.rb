require 'rails_helper'

RSpec.describe "flight_routes/show", type: :view do
  before(:each) do
    @flight_route = assign(:flight_route, FlightRoute.create!(
      :origin => "Origin",
      :destination => "Destination",
      :food => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Origin/)
    expect(rendered).to match(/Destination/)
    expect(rendered).to match(/false/)
  end
end
