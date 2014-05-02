# encoding: utf-8
class MessageAlarm

  include Singleton

  def alarm event
    return unless permission?(event)
    ChinaSms.instance.publish MessageAssist.instance.format_content(event)
  end

  def permission? event
    true
  end
end


