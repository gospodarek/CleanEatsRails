module PagesHelper
  
  def truncate_post_with_expand(text, length=500)
    space_idx = text.index(' ', length)
    initial = truncate(text, :length => space_idx, :omission=>"")
    initial += "<div class=\"post_extended_text\" style=\"display:none \">#{text.slice(space_idx, text.length)}</div>"
    initial += link_to("Expand", "#", :class=>"post_text_link")
    initial
  end
end