require 'spec_helper'

describe "teamplayers/index" do
  before(:each) do
    assign(:teamplayers, [
      stub_model(Teamplayer,
        :playerid => "Playerid",
        :teamid => "Teamid"
      ),
      stub_model(Teamplayer,
        :playerid => "Playerid",
        :teamid => "Teamid"
      )
    ])
  end

  it "renders a list of teamplayers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Playerid".to_s, :count => 2
    assert_select "tr>td", :text => "Teamid".to_s, :count => 2
  end
end
