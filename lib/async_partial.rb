require 'base/base'

module AsyncPartial
  class Engine < Rails::Engine
    initializer 'async helper' do |app|
      require 'async_partial_helper'
      ActionView::Base.send :include, AsyncPartialHelper
    end
  end
end