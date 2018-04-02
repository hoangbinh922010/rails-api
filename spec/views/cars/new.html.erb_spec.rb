require 'rails_helper'

RSpec.describe "cars/new", type: :view do
  before(:each) do
    assign(:car, Car.new(
      :ten => "MyString",
      :hang => "MyString",
      :gia => "MyString",
      :nam_SX => "MyString"
    ))
  end

  it "renders new car form" do
    render

    assert_select "form[action=?][method=?]", cars_path, "post" do

      assert_select "input[name=?]", "car[ten]"

      assert_select "input[name=?]", "car[hang]"

      assert_select "input[name=?]", "car[gia]"

      assert_select "input[name=?]", "car[nam_SX]"
    end
  end
end
