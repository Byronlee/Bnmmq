# -*- coding: utf-8 -*-
class AlarmService
  include Singleton

  def initialize
    @alarms =["MessageAlarm","EmailAlarm"]
  end
  
  def default_alarm
    @alarms.first
  end

  def alarm alarm_service, body
    Object.const_get(alarm_service).instance.alarm body
    next_alarm_service alarm_service, body 
  end

  def next_alarm_service current_alarm_service,alarm_body
    c_a_s = route_alarms current_alarm_service
    return  if c_a_s.blank?
    QueueService.instance.publish body, c_a_s
  end

  def route_alarms current 
    index = @alias.find_by_index current
    @alias[index+1]
  end
end
