module PagesHelper
  
  def truncate_post_with_expand(text)
    idx = text.index('<break/>')
    return text if idx.blank?
    initial = truncate(text, :length => idx, :omission=>"")
    initial += "<div class=\"post_extended_text\" style=\"display:none \">#{text.slice(idx, text.length)}</div>"
    initial += link_to(" ...More", "#", :class=>"post_text_link")
    initial
  end
end

#initial = truncate(text, :length => idx, :omission => "... #{link_to('[more]', "#", :class=>"post_text_link")}")
