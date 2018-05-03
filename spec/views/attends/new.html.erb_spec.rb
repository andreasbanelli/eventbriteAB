require 'rails_helper'

RSpec.describe "attends/new", type: :view do
  before(:each) do
    assign(:attend, Attend.new())
  end

  it "renders new attend form" do
    render

    assert_select "form[action=?][method=?]", attends_path, "post" do
    end
  end
end
