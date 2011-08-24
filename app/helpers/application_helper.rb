module ApplicationHelper # This helper is global and can be used by all controllers.

  # Return a title on a per-page basis.
  def title(str=nil)
   base_title = "Clean Eats"
   if str.blank?
     base_title
   else
     "#{base_title} | #{str}"
   end
  end
  
  def error_messages_for( object)
    render :partial => 'shared/error_messages', :locals => {:object => object}
  end
  
  # SESSION STUFF
  def current_user=(user)
    @current_user = user
    session[:user_id]=user.id
  end
  def current_user
    user = User.find_by_id(session[:user_id]) if session[:user_id]
    @current_user = user || false
  end
 
end
