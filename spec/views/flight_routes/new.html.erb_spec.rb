require 'rails_helper'

RSpec.describe "flight_routes/new", type: :view do
  before(:each) do
    assign(:flight_route, FlightRoute.new(
      :origin => "MyString",
      :destination => "MyString",
      :food => false
    ))
  end

  it "renders new flight_route form" do
    render

    assert_select "form[action=?][method=?]", flight_routes_path, "post" do

      assert_select "input#flight_route_origin[name=?]", "flight_route[origin]"

      assert_select "input#flight_route_destination[name=?]", "flight_route[destination]"

      assert_select "input#flight_route_food[name=?]", "flight_route[food]"
    end
  end
end
