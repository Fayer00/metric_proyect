require 'rails_helper'

RSpec.describe "metrics/index", type: :view do
  before(:each) do
    assign(:metrics, [
      create(:metric),
      create(:metric)
    ])
  end

  it "renders chart" do
    render
    assert_select "div:match('id', 'chart-1')"
  end
end