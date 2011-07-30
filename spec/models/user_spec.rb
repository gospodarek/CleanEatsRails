require 'spec_helper'

describe User do
  
  context "while validating user paramaters" do
    
    it "should require a username that is not nil and less than 51 characters" do
      User.new.should have_at_least(1).errors_on(:username)
      User.new(:username=>("")).should have_at_least(1).errors_on(:username)
    end
    
    it "should require a username that is less than 51 characters" do
      User.new(:username=>("a"*51)).should have_at_least(1).errors_on(:username)
      User.new(:username=>("a"*50)).should have(0).errors_on(:username)
      User.new(:username=>("j")).should have(0).errors_on(:username)
    end
    
    it "should reject duplicate usernames" do
      User.create(:username=>"test", :email=>("user55@gmail.com"))
      User.create(:username=>"test", :email=>("user5@gmail.com")).should_not be_valid
    end
    
    it "should require that an email not be nil and in correct format" do
      User.new.should have_at_least(1).errors_on(:email)
      User.new(:email=>("")).should have_at_least(1).errors_on(:email)
      User.new(:email=>("test@test.com")).should have(0).errors_on(:email)
      User.new(:email=>("usergmail.com")).should have_at_least(1).errors_on(:email)
      User.new(:email=>("user@gmailcom")).should have_at_least(1).errors_on(:email)
      User.new(:email=>("user@gmail.xxx")).should have_at_least(1).errors_on(:email)
      User.new(:email=>("user!@gmail.com")).should have_at_least(1).errors_on(:email)
      User.new(:email=>("user55@gmail.com")).should have(0).errors_on(:email)
      User.new(:email=>("user55@gmail.gov")).should have(0).errors_on(:email)
    end
    
    it "should reject duplicate emails" do
      User.create(:username=>"test", :email=>("user55@gmail.com")) 
      User.create(:username=>"test1", :email=>("user55@gmail.com")).should_not be_valid
      User.create(:username=>"test2", :email=>("User55@gmail.com")).should_not be_valid   
    end
    
    it "should require a password be between 6 and 40 characters" do
      User.new.should have_at_least(1).errors_on(:password)
      User.new(:password=>("test1")).should have_at_least(1).errors_on(:password)
      User.new(:password=>("test12")).should have(0).errors_on(:password)
      User.new(:password=>("a"*41)).should have_at_least(1).errors_on(:password)
      User.new(:password=>("a"*40)).should have(0).errors_on(:password)  
    end
    
    it "should require password confirmation" do
      User.create(:username=>"test", :email=>("user55@gmail.com"), :password=>"password", :password_confirmation  =>"pasword").should have_at_least(1).errors_on(:password) 
    end
    
    it "should create a crypted hash of the password using the salt" do
      user=User.create(:username=>"test", :email=>("user55@gmail.com"), :password=>"password", :password_confirmation  =>"password") 
      user.encrypted_password.should_not be_nil
    end
    
    it "should ensure entered password matches encrypted password" do
      user = User.create(:username=>"test", :email=>("user55@gmail.com"), :password=>"password", :password_confirmation  =>"password")
      user.has_password?("password").should == true
      user.has_password?("pasword").should == false
    end
    
    it "should authenticate user with correct email and password" do
      User.create(:username=>"test", :email=>"user55@gmail.com", :password=>"password", :password_confirmation  =>"password")
      User.authenticate("user55@gmail.com", "password").should_not be_nil
      User.authenticate("user@gmail.com", "password").should be_nil
    end
  
   
  end
end













