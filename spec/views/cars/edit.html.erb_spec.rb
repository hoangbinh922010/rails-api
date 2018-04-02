require 'rails_helper'

RSpec.describe "cars/edit", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :ten => "MyString",
      :hang => "MyString",
      :gia => "MyString",
      :nam_SX => "MyString"
    ))
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(@car), "post" do

      assert_select "input[name=?]", "car[ten]"

      assert_select "input[name=?]", "car[hang]"

      assert_select "input[name=?]", "car[gia]"

      assert_select "input[name=?]", "car[nam_SX]"
    end
  end
end
