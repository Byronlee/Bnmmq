# -*- coding: utf-8 -*-
require 'spec_helper'

describe MessageAssist do

  let(:message_assist) { MessageAssist.instance }

  it "MessageAssist should be singleton class" do
    message_assist.object_id.should == MessageAssist.instance.object_id
  end

  describe "#format_content" do

    it "give a message and should return a detail content" do
      message_assist.format_content("hello world").should == "hello world"
    end
  end
end
