require 'rails_helper'

RSpec.describe "businesses/show", :type => :view do
  before(:each) do
    @business = assign(:business, Business.create!(
      :name => "Name",
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Phone/)
  end
end
