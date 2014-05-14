require 'spec_helper'

describe "user_groups/index" do
  before(:each) do
    assign(:user_groups, [
      stub_model(UserGroup,
        :name => "Name",
        :user_id => 1
      ),
      stub_model(UserGroup,
        :name => "Name",
        :user_id => 1
      )
    ])
  end

  it "renders a list of user_groups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
