require 'spec_helper'

describe PostsController do
  
  it "should return the correct post when I go to show" do
    mypost = Post.create(:title=>"test", :text=>"lots of text")
    mypost2 = Post.create(:title=>"test2", :text=>"lots of text 2")
    
    get :show, {:id=>mypost.id}

    assigns[:post].title.should == "test"
  end
  
  #it "should return correct results based on search options" do
  #  mypost = Post.create(:title=>"test", :text=>"lots of text")
   # :query=>"lots"
   # Post.search
    # @posts = Post.where("title like ? or text like ?", "%#{params[:query]}%", "%#{params[:query]}%")
    #  @from_recipes = params[:from]
  #end
  
end

