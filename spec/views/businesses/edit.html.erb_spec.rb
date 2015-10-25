require 'rails_helper'

RSpec.describe "businesses/edit", :type => :view do
  before(:each) do
    @business = assign(:business, Business.create!(
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit business form" do
    render

    assert_select "form[action=?][method=?]", business_path(@business), "post" do

      assert_select "input#business_name[name=?]", "business[name]"

      assert_select "input#business_address[name=?]", "business[address]"

      assert_select "input#business_city[name=?]", "business[city]"

      assert_select "input#business_state[name=?]", "business[state]"

      assert_select "input#business_zip[name=?]", "business[zip]"

      assert_select "input#business_phone[name=?]", "business[phone]"
    end
  end
end
