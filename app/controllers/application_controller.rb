class ApplicationController < ActionController::Base
  protect_from_forgery
  
  include ApplicationHelper
  
  before_filter :require_signin
  
  def require_signin
    redirect_to('admin_path') if current_user.blank?
  end
  
  private 

   def sign_in(user)
     #cookies.permanent.signed[:remember_token] = [user.id, user.salt]
     current_user=(user)
   end

   def sign_out
     #cookies.delete(:remember_token)
     current_user = nil
   end
  
end
