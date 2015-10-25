require 'rails_helper'

RSpec.describe "landing_pages/new", :type => :view do
  before(:each) do
    assign(:landing_page, LandingPage.new(
      :url => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new landing_page form" do
    render

    assert_select "form[action=?][method=?]", landing_pages_path, "post" do

      assert_select "input#landing_page_url[name=?]", "landing_page[url]"

      assert_select "input#landing_page_name[name=?]", "landing_page[name]"
    end
  end
end
