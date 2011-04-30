require File.dirname(__FILE__) + '/../spec_helper'

describe AsyncPartial do

  it "respond properly to <%= render_async :tester %>" do
    args = [:tester]
    AsyncPartial.format_args(args, "controller").should == {:source_controller => "controller", :source_action => "tester", :partial => "/controller/tester", :options => nil }
  end

  it "respond properly to <%= render_async \"tester\" %>" do
    args = ["tester"]
    AsyncPartial.format_args(args, "controller").should == {:source_controller => "controller", :source_action => "tester", :partial => "/controller/tester", :options => nil }
  end
  
  it "respond properly to <%= render_async \"/shared/shared\", :controller => \"home\", :action => \"share\" %>" do
    args = ["/shared/shared", {:controller => "home", :action => "share"}]
    AsyncPartial.format_args(args, "controller").should == {:source_controller => "home", :source_action => "share", :partial => "/shared/shared", :options => nil }
  end
  
  it "respond properly to <%= render_async :partial => \"shared/shared\", :controller => \"home\", :action => \"share\" %>" do
    args = [{:partial => "/shared/shared", :controller => "home", :action => "share"}]
    AsyncPartial.format_args(args, "controller").should == {:source_controller => "home", :source_action => "share", :partial => "/shared/shared", :options => nil }
  end
  
  it "respond properly to <%= render_async :shared/shared, :controller => \"home\", :action => \"share\", :options => { :num => 1, :txt => \"txt\"} %>" do
    args = [{:partial => "/shared/shared", :controller => "home", :action => "share", :options => { :num => 1, :txt => "txt"}}]
    AsyncPartial.format_args(args, "controller").should == {:source_controller => "home", :source_action => "share", :partial => "/shared/shared", :options => { :num => 1, :txt => "txt"} }
  end
  
  it "should transform a hash into a string of url formatted options"
    #because hash is unordered, this test pass or fails randomly
    #h = {:source_controller => "home", :source_action => "share", :partial => "/shared/shared", :options => { :num => 1, :txt => "txt"} }
    #AsyncPartial.hash_to_url_options(h).should == "source_controller=home&num=1&txt=txt&source_action=share&partial=/shared/shared"
  
end  
