require 'spec_helper'

describe "live_players/new" do
  before(:each) do
    assign(:live_player, stub_model(LivePlayer,
      :Nid => 1,
      :Plyr => "MyString",
      :Team => "MyString"
    ).as_new_record)
  end

  it "renders new live_player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", live_players_path, "post" do
      assert_select "input#live_player_Nid[name=?]", "live_player[Nid]"
      assert_select "input#live_player_Plyr[name=?]", "live_player[Plyr]"
      assert_select "input#live_player_Team[name=?]", "live_player[Team]"
    end
  end
end
