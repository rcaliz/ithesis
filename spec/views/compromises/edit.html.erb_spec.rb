require 'spec_helper'

describe "compromises/edit" do
  before(:each) do
    @compromise = assign(:compromise, stub_model(Compromise,
      :description => "MyString",
      :state => false,
      :reunion_id => 1
    ))
  end

  it "renders the edit compromise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", compromise_path(@compromise), "post" do
      assert_select "input#compromise_description[name=?]", "compromise[description]"
      assert_select "input#compromise_state[name=?]", "compromise[state]"
      assert_select "input#compromise_reunion_id[name=?]", "compromise[reunion_id]"
    end
  end
end
