require 'spec_helper'

describe "abbrvs/index" do
  before(:each) do
    assign(:abbrvs, [
      stub_model(Abbrv,
        :Abrv => "Abrv",
        :Team => "Team"
      ),
      stub_model(Abbrv,
        :Abrv => "Abrv",
        :Team => "Team"
      )
    ])
  end

  it "renders a list of abbrvs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Abrv".to_s, :count => 2
    assert_select "tr>td", :text => "Team".to_s, :count => 2
  end
end
