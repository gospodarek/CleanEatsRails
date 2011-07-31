class PagesController < ApplicationController
  
  def index
    @posts= Post.find(:all, :order => "id DESC", :limit => 3)   
  end
  
  def about
  end
  
  def whatis
  end
  
  def contact
  end
  
  def send_message
    SystemMailer.contact(params[:name], params[:email], params[:text]).deliver
    flash[:success] = "Thank you.  Your message sent successfully."
    redirect_to("/")
  end

end