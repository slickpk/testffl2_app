require 'spec_helper'

describe "live_players/show" do
  before(:each) do
    @live_player = assign(:live_player, stub_model(LivePlayer,
      :Nid => 1,
      :Plyr => "Plyr",
      :Team => "Team"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Plyr/)
    rendered.should match(/Team/)
  end
end
