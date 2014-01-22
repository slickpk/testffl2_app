require 'spec_helper'

describe "teamplayers/new" do
  before(:each) do
    assign(:teamplayer, stub_model(Teamplayer,
      :playerid => "MyString",
      :teamid => "MyString"
    ).as_new_record)
  end

  it "renders new teamplayer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", teamplayers_path, "post" do
      assert_select "input#teamplayer_playerid[name=?]", "teamplayer[playerid]"
      assert_select "input#teamplayer_teamid[name=?]", "teamplayer[teamid]"
    end
  end
end
