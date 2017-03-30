require 'rails_helper'

RSpec.describe "flight_routes/edit", type: :view do
  before(:each) do
    @flight_route = assign(:flight_route, FlightRoute.create!(
      :origin => "MyString",
      :destination => "MyString",
      :food => false
    ))
  end

  it "renders the edit flight_route form" do
    render

    assert_select "form[action=?][method=?]", flight_route_path(@flight_route), "post" do

      assert_select "input#flight_route_origin[name=?]", "flight_route[origin]"

      assert_select "input#flight_route_destination[name=?]", "flight_route[destination]"

      assert_select "input#flight_route_food[name=?]", "flight_route[food]"
    end
  end
end
