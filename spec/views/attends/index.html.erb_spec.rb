require 'rails_helper'

RSpec.describe "attends/index", type: :view do
  before(:each) do
    assign(:attends, [
      Attend.create!(),
      Attend.create!()
    ])
  end

  it "renders a list of attends" do
    render
  end
end
