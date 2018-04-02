require 'rails_helper'

RSpec.describe "cars/show", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :ten => "Ten",
      :hang => "Hang",
      :gia => "Gia",
      :nam_SX => "Nam Sx"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ten/)
    expect(rendered).to match(/Hang/)
    expect(rendered).to match(/Gia/)
    expect(rendered).to match(/Nam Sx/)
  end
end
