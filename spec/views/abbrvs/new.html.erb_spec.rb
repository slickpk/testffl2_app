require 'spec_helper'

describe "abbrvs/new" do
  before(:each) do
    assign(:abbrv, stub_model(Abbrv,
      :Abrv => "MyString",
      :Team => "MyString"
    ).as_new_record)
  end

  it "renders new abbrv form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", abbrvs_path, "post" do
      assert_select "input#abbrv_Abrv[name=?]", "abbrv[Abrv]"
      assert_select "input#abbrv_Team[name=?]", "abbrv[Team]"
    end
  end
end
