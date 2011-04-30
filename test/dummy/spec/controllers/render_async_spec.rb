require File.dirname(__FILE__) + '/../spec_helper'

describe AsyncPartialController do
   
 it "should find the route" do
   async_partial_path.should == "/render_async"
 end

end