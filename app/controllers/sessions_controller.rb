class SessionsController < ApplicationController
   
   skip_before_filter :require_signin
    
  def new
    @title = "Admin sign in"  
  end

  def create
    @user = User.authenticate(params[:session][:email], params[:session][:password])
    if @user.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Admin sign in"
      render 'new'
    else
      sign_in(@user)
      redirect_to admin_posts_path
    end
  end
    
  def destroy
    sign_out
    redirect_to "/"
  end
end
