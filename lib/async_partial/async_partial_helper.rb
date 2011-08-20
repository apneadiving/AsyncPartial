module AsyncPartialHelper
  def async_partial *args
    vars = AsyncPartial.create_url_and_random(args, params[:controller])
    render :partial => "/async_partial/base", :locals => {:url => vars[:url], :random => vars[:random]}
  end
end
