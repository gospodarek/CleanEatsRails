module PagesHelper
  
  def truncate_post_with_expand(text, length=500)
    initial = truncate(text, :length => length, :omission=>"", :separator => ' ')
    initial += "<div class=\"post_extended_text\" style=\"display:none\">#{text.slice(length, text.length)}</div>"
    initial += link_to("Show More", "#", :class=>"post_text_link")
    initial
  end
end