require 'rails_helper'

RSpec.describe "leads/new", :type => :view do
  before(:each) do
    assign(:lead, Lead.new(
      :params => "MyText",
      :url => "MyString"
    ))
  end

  it "renders new lead form" do
    render

    assert_select "form[action=?][method=?]", leads_path, "post" do

      assert_select "textarea#lead_params[name=?]", "lead[params]"

      assert_select "input#lead_url[name=?]", "lead[url]"
    end
  end
end
