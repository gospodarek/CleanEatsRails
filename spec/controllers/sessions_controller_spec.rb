require 'spec_helper'

describe SessionsController do
  
  it "should not authenticate a user with a bad password" do
    User.create(:username=>"test", :email=>"user55@gmail.com", :password=>"password", :password_confirmation  =>"password")
    post :create, {:session=>{:email=>"me@gmail.com", :password=>"bad123"}}
    response.should render_template("new")
  end
  
  it "should correctly authenticate" do
    User.create(:username=>"test", :email=>"user55@gmail.com", :password=>"password", :password_confirmation  =>"password")
    post :create, {:session=>{:email=>"user55@gmail.com", :password=>"password"}}
    response.should redirect_to("/admin/posts")
  end
  
  it "should destroy the session if a user logs out" do
     stub_login
     
     get :destroy
     response.should redirect_to("/")
   end
   
   def stub_login
      Admin::PostsController.any_instance.stub(:require_signin)
    end

end
