require 'spec_helper'

describe "logos/show" do
  before(:each) do
    @logo = assign(:logo, stub_model(Logo,
      :url => "Url",
      :user_group_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/1/)
  end
end
