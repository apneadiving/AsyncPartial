require 'uri'

module AsyncPartial
  
  #creates the url containing args for the ajax request + a random id
  def AsyncPartial.create_url_and_random(args, current_controller)
    formatted_hash = AsyncPartial.format_args(args, current_controller)
    random = "async_" + (0...8).map{ ('a'..'z').to_a[rand(26)] }.join
    url = "/render_async?async_random=#{random}&" + AsyncPartial.hash_to_url_options(formatted_hash)
    {:url => URI.escape(url), :random => random }
  end
  
  #renders a hash like {:source_controller => "home", :source_action => "share", :partial => "/shared/shared", :options => { :num => 1, :txt => "txt"} }
  def AsyncPartial.format_args(args, current_controller)
    #when partial called this way: <%= render_async :my_partial %>
    hash = Hash.new
    if args.size == 1
      arg = args.first
      if arg.kind_of?(Hash) #render_async :partial => \"shared/shared\", :controller => \"home\", :action => \"share\"
        hash[:source_controller]= arg[:controller] || current_controller
        hash[:partial]          = AsyncPartial.format_partial_path(arg[:partial], current_controller)
        hash[:source_action]    = arg[:action] || hash[:partial]
        hash[:options]          = arg[:options]
      else #render_async :my_partial
        hash[:source_controller]= current_controller
        hash[:partial]          = AsyncPartial.format_partial_path(arg, current_controller)
        hash[:source_action]    = arg.to_s
        hash[:options]          = nil
      end
    else #render_async "/shared/shared", :controller => "home", :action => "share"
      partial = args.first
      h       = args.at(1)
      hash[:source_controller]= h[:controller]
      hash[:partial]          = AsyncPartial.format_partial_path(partial, current_controller)
      hash[:source_action]    = h[:action]  || partial
      hash[:options]          = h[:options]
    end
    hash
  end
  
  #partial sub_dir/partial
  #partial partial
  #partial /shared/partial
  def AsyncPartial.format_partial_path(partial, current_controller)
    if partial.to_s[0] == 47
      return partial
    else
      return "/#{current_controller}/#{partial}"
    end
  end
  
  #transforms a hash into a range of url options
  def AsyncPartial.hash_to_url_options(h)
    h.map{|k,v| if v.kind_of?(Hash); AsyncPartial.hash_to_url_options(v); else; "#{k}=#{v}";end} * "&"
  end

end