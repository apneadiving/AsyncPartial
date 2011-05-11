require 'application_helper'
require 'base/base'

module AsyncPartial
  class Engine < Rails::Engine
    initializer 'themes.helper' do |app|
        ActionView::Base.send :include, AsyncPartialHelper
    end
  end
end