Rails.application.routes.draw do
  match "/render_async" => "async_partial#remote_render", :as => :async_partial
end
