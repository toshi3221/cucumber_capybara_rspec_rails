require 'spec_helper'

describe "artifacts/edit" do
  before(:each) do
    @artifact = assign(:artifact, stub_model(Artifact,
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit artifact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => artifacts_path(@artifact), :method => "post" do
      assert_select "input#artifact_title", :name => "artifact[title]"
      assert_select "textarea#artifact_content", :name => "artifact[content]"
    end
  end
end
