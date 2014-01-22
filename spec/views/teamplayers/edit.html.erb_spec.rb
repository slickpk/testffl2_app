require 'spec_helper'

describe "teamplayers/edit" do
  before(:each) do
    @teamplayer = assign(:teamplayer, stub_model(Teamplayer,
      :playerid => "MyString",
      :teamid => "MyString"
    ))
  end

  it "renders the edit teamplayer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", teamplayer_path(@teamplayer), "post" do
      assert_select "input#teamplayer_playerid[name=?]", "teamplayer[playerid]"
      assert_select "input#teamplayer_teamid[name=?]", "teamplayer[teamid]"
    end
  end
end
