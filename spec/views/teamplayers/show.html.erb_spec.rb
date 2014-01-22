require 'spec_helper'

describe "teamplayers/show" do
  before(:each) do
    @teamplayer = assign(:teamplayer, stub_model(Teamplayer,
      :playerid => "Playerid",
      :teamid => "Teamid"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Playerid/)
    rendered.should match(/Teamid/)
  end
end
