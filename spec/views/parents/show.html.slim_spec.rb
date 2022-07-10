require 'rails_helper'

RSpec.describe "parents/show", type: :view do
  before(:each) do
    @parent = assign(:parent, Parent.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
