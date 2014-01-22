require 'spec_helper'

describe "fteams/new" do
  before(:each) do
    assign(:fteam, stub_model(Fteam,
      :Team => "MyString",
      :TeamUrl => "MyString"
    ).as_new_record)
  end

  it "renders new fteam form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fteams_path, "post" do
      assert_select "input#fteam_Team[name=?]", "fteam[Team]"
      assert_select "input#fteam_TeamUrl[name=?]", "fteam[TeamUrl]"
    end
  end
end
