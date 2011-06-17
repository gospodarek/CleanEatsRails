require 'spec_helper'

describe Post do
  context "while creating a new posting"
  it "should require a title" do
    Post.new.should have_at_least(1).errors_on(:title)
  end
end
