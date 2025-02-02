require 'rails_helper'

RSpec.describe "dogs/new", type: :view do
  before(:each) do
    assign(:dog, Dog.new(
      name: "MyString"
    ))
  end

  it "renders new dog form" do
    render

    assert_select "form[action=?][method=?]", dogs_path, "post" do

      assert_select "input[name=?]", "dog[name]"
    end
  end
end
