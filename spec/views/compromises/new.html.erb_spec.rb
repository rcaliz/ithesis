require 'spec_helper'

describe "compromises/new" do
  before(:each) do
    assign(:compromise, stub_model(Compromise,
      :description => "MyString",
      :state => false,
      :reunion_id => 1
    ).as_new_record)
  end

  it "renders new compromise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", compromises_path, "post" do
      assert_select "input#compromise_description[name=?]", "compromise[description]"
      assert_select "input#compromise_state[name=?]", "compromise[state]"
      assert_select "input#compromise_reunion_id[name=?]", "compromise[reunion_id]"
    end
  end
end
