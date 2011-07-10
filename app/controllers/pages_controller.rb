class PagesController < ApplicationController
  
  def index
    @title="Home"
    @posts= Post.find(:all, :order => "id DESC", :limit => 3)   
  end
  def about
    @title="About"
  end
  def whatIs
    @title="What is Clean Eating?"
  end
  def contact
    @title="Contact"
  end
end