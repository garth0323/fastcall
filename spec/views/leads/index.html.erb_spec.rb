require 'rails_helper'

RSpec.describe "leads/index", :type => :view do
  before(:each) do
    assign(:leads, [
      Lead.create!(
        :params => "MyText",
        :url => "Url"
      ),
      Lead.create!(
        :params => "MyText",
        :url => "Url"
      )
    ])
  end

  it "renders a list of leads" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
