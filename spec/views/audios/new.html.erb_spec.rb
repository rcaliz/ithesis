require 'spec_helper'

describe "audios/new" do
  before(:each) do
    assign(:audio, stub_model(Audio,
      :title => "MyString",
      :audio => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new audio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => audios_path, :method => "post" do
      assert_select "input#audio_title", :name => "audio[title]"
      assert_select "input#audio_audio", :name => "audio[audio]"
      assert_select "textarea#audio_description", :name => "audio[description]"
    end
  end
end
