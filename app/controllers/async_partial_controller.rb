class AsyncPartialController < ApplicationController
     
  def remote_render
    kontroller = (params[:source_controller].camelize + "Controller").constantize
    @async_marker = params[:async_random]
    @path_to_partial = params[:partial]
    if kontroller.instance_methods.include? params[:source_action]
      @locals = kontroller.new.send(params[:source_action],params)
      raise "You must return a hash from your controller" unless @locals.kind_of?(Hash)
    else
      @locals = { }
    end
    respond_to do |format|
      format.js
    end
  end

end