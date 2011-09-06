require 'spec_helper'

describe Admin::PostsController do
  
  
  it "should require admin rights to do anything"

  it "should return an array of posts" do
    stub_login
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  it "should allow me to create a new post" do
    stub_login
    get :new
    assigns[:post].should be_present

    post :create, {:post=>{:title=>"my title", :text=>"some random text"}}#posting to the create method
    Post.last.title.should == "my title"
  end

  it "should return an error if I try to create an incomplete post" do
    stub_login
  
    post :create, {:post=>{:title=>nil, :text=>"some random text"}}
    assigns[:post].text.should == "some random text"
    assigns[:post].should have_at_least(1).errors_on(:title)
  end

  it "should allow me to update a post" do
    stub_login
    
    mypost = Post.create(:title=>"test", :text=>"lots of text")
    get :edit, {:id=>mypost.id}
    assigns[:post].id.should == mypost.id

    post :update, {:id=>mypost.id, :post => {:title=>"new title", :text=>"lots of new text"}}
    Post.find(mypost.id).title.should == "new title"
  end

  it "should return an error if I update a post with incomplete data" do
    stub_login
    
    mypost = Post.create(:title=>"test", :text=>"lots of text")

    post :update, {:id=>mypost.id, :post => {:title=>nil, :text=>"lots of new text"}}
    Post.find_by_id(mypost.id).title.should == "test"
    assigns[:post].should_not be_nil
    assigns[:post].should have_at_least(1).errors_on(:title)
  end

  it "should allow me to delete a post" do
    stub_login
    
    mypost = Post.create(:title=>"test", :text=>"lots of text")

    post :destroy, {:id=>mypost.id}
    Post.count.should == 0
  end

  def stub_login
    Admin::PostsController.any_instance.stub(:require_signin)
  end

end
