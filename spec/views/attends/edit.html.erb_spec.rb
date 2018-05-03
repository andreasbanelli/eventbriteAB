require 'rails_helper'

RSpec.describe "attends/edit", type: :view do
  before(:each) do
    @attend = assign(:attend, Attend.create!())
  end

  it "renders the edit attend form" do
    render

    assert_select "form[action=?][method=?]", attend_path(@attend), "post" do
    end
  end
end
