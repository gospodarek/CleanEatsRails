class ApplicationController < ActionController::Base
  protect_from_forgery
  include ApplicationHelper
  
  before_filter :require_signin
  
  def require_signin 
    redirect_to admin_path if current_user.blank?
  end
  
  private 

   def sign_in(user)
     self.current_user=(user)
   end

   def sign_out
     current_user = nil
     session[:user_id]=nil
   end
  
end
