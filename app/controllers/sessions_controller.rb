class SessionsController < ApplicationController
    
  def new
    @title = "Admin sign in"
  end

  def create
    user = User.authenticate(params[:session][:email], params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Admin sign in"
      render 'new'
    else
      sign_in(user)
      redirect_to("/admin/posts")
    end
  end
    
  def destroy
    sign_out
    redirect_to "index"
  end
end
