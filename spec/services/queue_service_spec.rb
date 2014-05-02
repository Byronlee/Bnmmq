# -*- coding: utf-8 -*-
require 'spec_helper'

describe QueueService do

  let(:alarm_service) { QueueService.instance }

  it "QueueService should be singleton class" do
    alarm_service.object_id.should == QueueService.instance.object_id
  end
  
  describe "#listening" do

    it "when i give a message to the alarm action then should respond ok" do
     # result = @message_service.listening
     # @message_service.queue.publish("hello word", :persistent => true)
     # result.gets.result[:message].should == "余额不足"
     # @message_service.channel
    end
  end

  describe "#publish" do

    it "publish a event" do
     # alarm_service.queue.publish("hello word", :persistent => true)
    end
  end

end
