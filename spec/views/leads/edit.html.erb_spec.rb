require 'rails_helper'

RSpec.describe "leads/edit", :type => :view do
  before(:each) do
    @lead = assign(:lead, Lead.create!(
      :params => "MyText",
      :url => "MyString"
    ))
  end

  it "renders the edit lead form" do
    render

    assert_select "form[action=?][method=?]", lead_path(@lead), "post" do

      assert_select "textarea#lead_params[name=?]", "lead[params]"

      assert_select "input#lead_url[name=?]", "lead[url]"
    end
  end
end
