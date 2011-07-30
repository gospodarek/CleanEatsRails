require 'spec_helper'

describe PagesController do
  
  it "should return an array of posts when I navigate to index" do
    Post.create(:title=>"Hummus", :text=>"lots and lots of text3")
    get :index
    assigns[:posts].should_not be_nil
  end
  
end
