require 'rails_helper'

RSpec.describe "flight_routes/index", type: :view do
  before(:each) do
    assign(:flight_routes, [
      FlightRoute.create!(
        :origin => "DCA",
        :destination => "LAX",
        :food => false
      ),
      FlightRoute.create!(
        :origin => "DCA",
        :destination => "SFO",
        :food => false
      )
    ])
  end

  it "renders a list of flight_routes" do
    render
    assert_select "tr>td", :text => "DCA".to_s, :count => 2
    assert_select "tr>td", :text => "LAX".to_s, :count => 1
    assert_select "tr>td", :text => "SFO".to_s, :count => 1
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
