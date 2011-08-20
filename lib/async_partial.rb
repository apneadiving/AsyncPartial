require 'async_partial/base'
require 'async_partial/async_partial_helper'

module AsyncPartial
  class Engine < Rails::Engine
    initializer 'async helper' do |app|
      ActionView::Base.send :include, AsyncPartialHelper
    end
  end
end