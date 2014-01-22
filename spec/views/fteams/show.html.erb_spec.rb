require 'spec_helper'

describe "fteams/show" do
  before(:each) do
    @fteam = assign(:fteam, stub_model(Fteam,
      :Team => "Team",
      :TeamUrl => "Team Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Team/)
    rendered.should match(/Team Url/)
  end
end
