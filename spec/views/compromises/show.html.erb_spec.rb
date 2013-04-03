require 'spec_helper'

describe "compromises/show" do
  before(:each) do
    @compromise = assign(:compromise, stub_model(Compromise,
      :description => "Description",
      :state => false,
      :reunion_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    rendered.should match(/false/)
    rendered.should match(/1/)
  end
end
