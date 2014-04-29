# -*- coding: utf-8 -*-
class MessageService 

  def initialize
    @to = 13880156590
    @message = ""
  end

  def make_content origin
    @content = origin
  end

  def send content
    ChinaSmsService.client.to @to, @content
  end
end
