require 'rails_helper'

RSpec.describe "attends/show", type: :view do
  before(:each) do
    @attend = assign(:attend, Attend.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
