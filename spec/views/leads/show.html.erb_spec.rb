require 'rails_helper'

RSpec.describe "leads/show", :type => :view do
  before(:each) do
    @lead = assign(:lead, Lead.create!(
      :params => "MyText",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Url/)
  end
end
