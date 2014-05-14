require 'spec_helper'

describe "invites/new" do
  before(:each) do
    assign(:invite, stub_model(Invite,
      :email => "MyString",
      :sender_id => 1,
      :recipient_id => 1,
      :token => "MyString"
    ).as_new_record)
  end

  it "renders new invite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", invites_path, "post" do
      assert_select "input#invite_email[name=?]", "invite[email]"
      assert_select "input#invite_sender_id[name=?]", "invite[sender_id]"
      assert_select "input#invite_recipient_id[name=?]", "invite[recipient_id]"
      assert_select "input#invite_token[name=?]", "invite[token]"
    end
  end
end
