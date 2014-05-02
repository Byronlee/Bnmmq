# encoding: utf-8
class EmailAlarm

  include Singleton

  def alarm event
    return unless permission?(event)
    Email.instance.launch(EmailAssist.instance.format_content(event)).deliver
  end

  def permission? event
    true
  end
end
