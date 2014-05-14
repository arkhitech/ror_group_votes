require 'spec_helper'

describe "logos/new" do
  before(:each) do
    assign(:logo, stub_model(Logo,
      :url => "MyString",
      :user_group_id => 1
    ).as_new_record)
  end

  it "renders new logo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", logos_path, "post" do
      assert_select "input#logo_url[name=?]", "logo[url]"
      assert_select "input#logo_user_group_id[name=?]", "logo[user_group_id]"
    end
  end
end
