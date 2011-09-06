require 'spec_helper'

describe PagesController do
  
  it "should return an array of posts when I navigate to index" do
    Post.create(:title=>"Hummus", :text=>"lots and lots of text3")
    get :index
    assigns[:posts].should_not be_nil
  end
  
  it "should render about page" do
    get :about
    response.status.should == 200
  end
  
  it "should render whatis page" do
    get :whatis
    response.status.should == 200
  end
  
  it "should render contact page" do
    get :contact
    response.status.should == 200
  end
  
  it "should send mail" do
    post :send_message, {:name=>"John", :email=>"test@gmail.com", :text=>"This is another test comment."}
    response.should redirect_to("/")
  end

end


