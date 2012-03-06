require 'spec_helper'

describe "logins/show" do
  before(:each) do
    @login = assign(:login, stub_model(Login))
  end

  it "renders attributes in <p>" do
    render
  end
end
