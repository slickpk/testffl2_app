require 'spec_helper'

describe "live_players/edit" do
  before(:each) do
    @live_player = assign(:live_player, stub_model(LivePlayer,
      :Nid => 1,
      :Plyr => "MyString",
      :Team => "MyString"
    ))
  end

  it "renders the edit live_player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", live_player_path(@live_player), "post" do
      assert_select "input#live_player_Nid[name=?]", "live_player[Nid]"
      assert_select "input#live_player_Plyr[name=?]", "live_player[Plyr]"
      assert_select "input#live_player_Team[name=?]", "live_player[Team]"
    end
  end
end
