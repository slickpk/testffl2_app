require 'spec_helper'

describe "fteams/index" do
  before(:each) do
    assign(:fteams, [
      stub_model(Fteam,
        :Team => "Team",
        :TeamUrl => "Team Url"
      ),
      stub_model(Fteam,
        :Team => "Team",
        :TeamUrl => "Team Url"
      )
    ])
  end

  it "renders a list of fteams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Team".to_s, :count => 2
    assert_select "tr>td", :text => "Team Url".to_s, :count => 2
  end
end
