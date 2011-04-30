class HomeController < ApplicationController
  def index
  end
  
  def tester(params)
    { :test => "OK1" }
  end
  
  def share(params)
    if params[:additional] == "2"
      { :test => "OK2" }
    elsif params[:additional] == "add"
      { :test => "OK3" }
    end
  end
  
end
