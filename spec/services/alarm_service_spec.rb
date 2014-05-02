# -*- coding: utf-8 -*-
require 'spec_helper'

describe AlarmService do

  let(:alarm_service) { AlarmService.instance }

  it "AlarmService should be singleton class" do
    alarm_service.object_id.should == AlarmService.instance.object_id
  end
  
  context "#default_alarm" do
    it "default_alarm should be MessageAlarm" do
      expect(alarm_service.default_alarm).to eq "MessageAlarm"
    end
  end
end
