require 'spec_helper'

describe "abbrvs/edit" do
  before(:each) do
    @abbrv = assign(:abbrv, stub_model(Abbrv,
      :Abrv => "MyString",
      :Team => "MyString"
    ))
  end

  it "renders the edit abbrv form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", abbrv_path(@abbrv), "post" do
      assert_select "input#abbrv_Abrv[name=?]", "abbrv[Abrv]"
      assert_select "input#abbrv_Team[name=?]", "abbrv[Team]"
    end
  end
end
