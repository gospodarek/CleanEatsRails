require "spec_helper"

describe SystemMailer do

    it "should send email with correct contact info" do
      #user = Factory.create(:name=>"John Smith", :email=>"user@test.com",:text=>"Hello.  This is a test comment.")
      SystemMailer.contact("John Smith", "user@test.com", "Hello.  This is a test comment.").deliver

      ActionMailer::Base.deliveries.should_not be_empty
      sent = ActionMailer::Base.deliveries.first
      sent.to.should == ["gospodarek@gmail.com"]
      sent.subject.should == "[Clean Eats] Message"
      sent.body.should include("Hello.  This is a test comment.")
    end
end


