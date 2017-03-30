require 'rails_helper'

RSpec.describe "flight_routes/index", type: :view do
  before(:each) do
    assign(:flight_routes, [
      FlightRoute.create!(
        :origin => "Origin",
        :destination => "Destination",
        :food => false
      ),
      FlightRoute.create!(
        :origin => "Origin",
        :destination => "Destination",
        :food => false
      )
    ])
  end

  it "renders a list of flight_routes" do
    render
    assert_select "tr>td", :text => "Origin".to_s, :count => 2
    assert_select "tr>td", :text => "Destination".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
