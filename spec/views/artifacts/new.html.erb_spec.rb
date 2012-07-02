require 'spec_helper'

describe "artifacts/new" do
  before(:each) do
    assign(:artifact, stub_model(Artifact,
      :title => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new artifact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => artifacts_path, :method => "post" do
      assert_select "input#artifact_title", :name => "artifact[title]"
      assert_select "textarea#artifact_content", :name => "artifact[content]"
    end
  end
end
