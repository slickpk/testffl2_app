require 'spec_helper'

describe "abbrvs/show" do
  before(:each) do
    @abbrv = assign(:abbrv, stub_model(Abbrv,
      :Abrv => "Abrv",
      :Team => "Team"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Abrv/)
    rendered.should match(/Team/)
  end
end
