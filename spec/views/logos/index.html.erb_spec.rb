require 'spec_helper'

describe "logos/index" do
  before(:each) do
    assign(:logos, [
      stub_model(Logo,
        :url => "Url",
        :user_group_id => 1
      ),
      stub_model(Logo,
        :url => "Url",
        :user_group_id => 1
      )
    ])
  end

  it "renders a list of logos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
