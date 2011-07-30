require 'spec_helper'

describe PostsController do
  
  it "should return the correct post when I go to show" do
    mypost = Post.create(:title=>"test", :text=>"lots of text")
    mypost2 = Post.create(:title=>"test2", :text=>"lots of text 2")
    
    get :show, {:id=>mypost.id}

    assigns[:post].title.should == "test"
  end
  
end

