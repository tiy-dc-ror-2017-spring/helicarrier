require 'rails_helper'

RSpec.describe "flight_routes/show", type: :view do
  before(:each) do
    @flight_route = assign(:flight_route, FlightRoute.create!(
      :origin => "DCA",
      :destination => "SFO",
      :food => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/DCA/)
    expect(rendered).to match(/SFO/)
    expect(rendered).to match(/false/)
  end
end
