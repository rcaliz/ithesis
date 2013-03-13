require 'spec_helper'

describe "reunions/new" do
  before(:each) do
    assign(:reunion, stub_model(Reunion,
      :subject => "MyString",
      :place => "MyString"
    ).as_new_record)
  end

  it "renders new reunion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reunions_path, :method => "post" do
      assert_select "input#reunion_subject", :name => "reunion[subject]"
      assert_select "input#reunion_place", :name => "reunion[place]"
    end
  end
end
