require 'spec_helper'

describe "logins/new" do
  before(:each) do
    assign(:login, stub_model(Login).as_new_record)
  end

  it "renders new login form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => logins_path, :method => "post" do
    end
  end
end
