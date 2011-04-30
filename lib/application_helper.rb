module ApplicationHelper
  def async_partial *args
    vars = AsyncPartial.create_url_and_random(args, params[:controller])
    raw "
<div id=\"#{vars[:random]}\"></div>
<script type=\"text/javascript\" charset=\"utf-8\">
$.ajax({
      type: \"GET\",
      url: \"#{vars[:url]}\"
      });
</script>"
  end
end
