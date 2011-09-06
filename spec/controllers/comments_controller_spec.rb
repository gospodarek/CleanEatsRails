require 'spec_helper'

describe CommentsController do
  
  it "should allow me to create a new comment" do
    mypost = Post.create(:title=>"test", :text=>"lots of text")    
    post :create, {:comment=>{:commenter=>"Marsha", :body=>"this is a great post!"}, :post_id =>mypost.id}
    Comment.last.commenter.should == "Marsha"
  end
  
  it "should allow me to delete a comment" do
    stub_login
    mypost = Post.create(:title=>"test", :text=>"lots of text")
    mycomment = mypost.comments.create(:commenter=>"Marsha", :body=>"this is a great post!")
    post :destroy, {:post_id=> mypost.id, :id=>mycomment.id}
    Comment.count.should == 0
  end
  
  def stub_login
    CommentsController.any_instance.stub(:require_signin)
  end
end
