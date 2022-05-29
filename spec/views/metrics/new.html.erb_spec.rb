require "rails_helper"

RSpec.describe "metrics/new", type: :view do
  it "Name is required" do
    render
    expect(rendered).to have_selector('input[type="text"][required]')
  end

  it "Value is required" do
    render
    expect(rendered).to have_selector('input[type="number"][required]')
  end

  it "Timestamp is required" do
    render
    expect(rendered).to have_selector('input[type="datetime-local"][required]')
  end
end