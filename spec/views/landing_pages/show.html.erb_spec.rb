require 'rails_helper'

RSpec.describe "landing_pages/show", :type => :view do
  before(:each) do
    @landing_page = assign(:landing_page, LandingPage.create!(
      :url => "Url",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Name/)
  end
end
