require 'rails_helper'

RSpec.describe "dogs/edit", type: :view do
  let(:dog) {
    Dog.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:dog, dog)
  end

  it "renders the edit dog form" do
    render

    assert_select "form[action=?][method=?]", dog_path(dog), "post" do

      assert_select "input[name=?]", "dog[name]"
    end
  end
end
