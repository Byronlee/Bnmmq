#encoding:utf-8
require 'spec_helper'

describe Email do

  let(:email) { Email.instance }

  it "Email should be singleton class" do
    email.object_id.should == Email.instance.object_id
  end

  before(:all) do
    @email = email.launch("Bnmmq Service alarm Email")
  end

  describe "#launch" do
   
    it "should be set to be delivered to the email passed in" do
      @email.should deliver_to("lbyronlee@gmail.com")
    end

    it "should contain the key message in the mail body" do
      @email.should have_body_text(/Bnmmq/)
    end

    it "should have the correct subject" do
      @email.should have_subject(/Bnmmq Service alarm Email/)
    end
  end
end
