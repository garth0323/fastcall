require 'rails_helper'

RSpec.describe "landing_pages/index", :type => :view do
  before(:each) do
    assign(:landing_pages, [
      LandingPage.create!(
        :url => "Url",
        :name => "Name"
      ),
      LandingPage.create!(
        :url => "Url",
        :name => "Name"
      )
    ])
  end

  it "renders a list of landing_pages" do
    render
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
