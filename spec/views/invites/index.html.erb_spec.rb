require 'spec_helper'

describe "invites/index" do
  before(:each) do
    assign(:invites, [
      stub_model(Invite,
        :email => "Email",
        :sender_id => 1,
        :recipient_id => 2,
        :token => "Token"
      ),
      stub_model(Invite,
        :email => "Email",
        :sender_id => 1,
        :recipient_id => 2,
        :token => "Token"
      )
    ])
  end

  it "renders a list of invites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Token".to_s, :count => 2
  end
end
