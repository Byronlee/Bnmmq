#encoding:utf-8
require 'spec_helper'

describe EmailAlarm do

  let(:email_alarm) { EmailAlarm.instance }

  it "EmailAlarm should be singleton class" do
    email_alarm.object_id.should == EmailAlarm.instance.object_id
  end

  describe "#alarm" do
    it "when i give a message to the alarm action then should respond ok" do
     # result = message_alarm.alarm("hello word")
     # result[:success].should be_false
     # result[:message].should == "余额不足"
    end
  end
  
  describe "#permission?" do
    it "give a event should return true" do
      expect(email_alarm.permission?("event")).to eq(true)
    end
  end
end
