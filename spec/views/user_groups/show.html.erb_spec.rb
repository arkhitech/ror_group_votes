require 'spec_helper'

describe "user_groups/show" do
  before(:each) do
    @user_group = assign(:user_group, stub_model(UserGroup,
      :name => "Name",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
