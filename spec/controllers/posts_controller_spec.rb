require 'spec_helper'

describe PostsController do
  
  it "should return an array of posts when I go to index" do
    get :index
    assigns[:posts].should_not be_nil
  end
  
  it "should allow me to create a new post" do
    count = Post.count
    post :create, {:post=>{:title=>"Test Post", :text=>"Test text"}}
    Post.count.should == (count + 1)
  end
  
end

