require 'spec_helper'

describe "user_groups/edit" do
  before(:each) do
    @user_group = assign(:user_group, stub_model(UserGroup,
      :name => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit user_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_group_path(@user_group), "post" do
      assert_select "input#user_group_name[name=?]", "user_group[name]"
      assert_select "input#user_group_user_id[name=?]", "user_group[user_id]"
    end
  end
end
