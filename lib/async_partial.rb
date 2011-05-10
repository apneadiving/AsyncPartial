require 'async_partial/application_helper'
require 'base/base'

module RenderAsync
  class Engine < Rails::Engine
    initializer 'async_partial.helper' do |app|
      ActionView::Base.send :include, AsyncPartial::ApplicationHelper
    end
  end
end