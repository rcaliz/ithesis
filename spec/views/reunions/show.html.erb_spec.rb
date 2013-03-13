require 'spec_helper'

describe "reunions/show" do
  before(:each) do
    @reunion = assign(:reunion, stub_model(Reunion,
      :subject => "Subject",
      :place => "Place"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subject/)
    rendered.should match(/Place/)
  end
end
