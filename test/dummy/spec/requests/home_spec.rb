require File.dirname(__FILE__) + '/../spec_helper'

describe "Home view", :js => true do
  
  it "should render all partials" do
    visit root_path
    page.should have_content("OK1")
    page.should have_content("OK2")
    page.should have_content("OK3")
  end
  
end

