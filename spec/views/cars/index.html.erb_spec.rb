require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        :ten => "Ten",
        :hang => "Hang",
        :gia => "Gia",
        :nam_SX => "Nam Sx"
      ),
      Car.create!(
        :ten => "Ten",
        :hang => "Hang",
        :gia => "Gia",
        :nam_SX => "Nam Sx"
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", :text => "Ten".to_s, :count => 2
    assert_select "tr>td", :text => "Hang".to_s, :count => 2
    assert_select "tr>td", :text => "Gia".to_s, :count => 2
    assert_select "tr>td", :text => "Nam Sx".to_s, :count => 2
  end
end
