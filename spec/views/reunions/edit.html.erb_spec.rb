require 'spec_helper'

describe "reunions/edit" do
  before(:each) do
    @reunion = assign(:reunion, stub_model(Reunion,
      :subject => "MyString",
      :place => "MyString"
    ))
  end

  it "renders the edit reunion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reunions_path(@reunion), :method => "post" do
      assert_select "input#reunion_subject", :name => "reunion[subject]"
      assert_select "input#reunion_place", :name => "reunion[place]"
    end
  end
end
