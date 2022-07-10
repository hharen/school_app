require 'rails_helper'

RSpec.describe "parents/index", type: :view do
  before(:each) do
    assign(:parents, [
      Parent.create!(),
      Parent.create!()
    ])
  end

  it "renders a list of parents" do
    render
  end
end
