require 'spec_helper'

describe "fteams/edit" do
  before(:each) do
    @fteam = assign(:fteam, stub_model(Fteam,
      :Team => "MyString",
      :TeamUrl => "MyString"
    ))
  end

  it "renders the edit fteam form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fteam_path(@fteam), "post" do
      assert_select "input#fteam_Team[name=?]", "fteam[Team]"
      assert_select "input#fteam_TeamUrl[name=?]", "fteam[TeamUrl]"
    end
  end
end
