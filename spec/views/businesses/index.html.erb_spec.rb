require 'rails_helper'

RSpec.describe "businesses/index", :type => :view do
  before(:each) do
    assign(:businesses, [
      Business.create!(
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :phone => "Phone"
      ),
      Business.create!(
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of businesses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
