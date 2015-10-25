require 'rails_helper'

RSpec.describe "landing_pages/edit", :type => :view do
  before(:each) do
    @landing_page = assign(:landing_page, LandingPage.create!(
      :url => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit landing_page form" do
    render

    assert_select "form[action=?][method=?]", landing_page_path(@landing_page), "post" do

      assert_select "input#landing_page_url[name=?]", "landing_page[url]"

      assert_select "input#landing_page_name[name=?]", "landing_page[name]"
    end
  end
end
