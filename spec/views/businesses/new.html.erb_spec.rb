require 'rails_helper'

RSpec.describe "businesses/new", :type => :view do
  before(:each) do
    assign(:business, Business.new(
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders new business form" do
    render

    assert_select "form[action=?][method=?]", businesses_path, "post" do

      assert_select "input#business_name[name=?]", "business[name]"

      assert_select "input#business_address[name=?]", "business[address]"

      assert_select "input#business_city[name=?]", "business[city]"

      assert_select "input#business_state[name=?]", "business[state]"

      assert_select "input#business_zip[name=?]", "business[zip]"

      assert_select "input#business_phone[name=?]", "business[phone]"
    end
  end
end
