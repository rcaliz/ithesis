require 'spec_helper'

describe "reunions/index" do
  before(:each) do
    assign(:reunions, [
      stub_model(Reunion,
        :subject => "Subject",
        :place => "Place"
      ),
      stub_model(Reunion,
        :subject => "Subject",
        :place => "Place"
      )
    ])
  end

  it "renders a list of reunions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
  end
end
