require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the BlogsHelper. For example:
#
# describe BlogsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe ApplicationHelper do
  
  it "should modify the base title with the string passed to it" do
    helper.title("").should =="Clean Eats"
    helper.title("About").should include("| About")
  end
  
  it "should render active record object errors" do
    helper.should_receive(:render)
    helper.error_messages_for(nil)
  end
  
end
