class PagesController < ApplicationController
  
  def index
    @title="Home"
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