require 'spec_helper'

describe "live_players/index" do
  before(:each) do
    assign(:live_players, [
      stub_model(LivePlayer,
        :Nid => 1,
        :Plyr => "Plyr",
        :Team => "Team"
      ),
      stub_model(LivePlayer,
        :Nid => 1,
        :Plyr => "Plyr",
        :Team => "Team"
      )
    ])
  end

  it "renders a list of live_players" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Plyr".to_s, :count => 2
    assert_select "tr>td", :text => "Team".to_s, :count => 2
  end
end
