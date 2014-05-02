# -*- coding: utf-8 -*-
class QueueService

  include Singleton

  def initialize
    @conn = Bunny.new(:automatically_recover => false)
    @conn.start
    @channel = @conn.create_channel
    @alarm_service = AlarmService.instance
    @default_queue = @alarm_service.default_alarm
  end

  # 注意,开启listening 时要将各种queue的listen都要开启
  def listening queue_name
    begin
      puts " [*] Waiting for messages. To exit press CTRL+C"
      set_queue(queue_name).subscribe(:ack => true, :block => true) do |delivery_info, properties, body|
        puts " [x] Received task #{body}"
        puts @alarm_service.alarm(queue_name, body)
        puts " [x] task #{body} Done."
        @channel.ack(delivery_info.delivery_tag)
      end
    rescue Interrupt => _
      @conn.close
      exit(0)
    end
  end

  # 注意,每次调用前必须注意先set_queue
  def publish data,*queue
    queue_name = (queue.blank? ? @default_queue : queue.first)
    begin
      set_queue(queue_name).publish(data.to_s, :persistent => true)
    rescue Interrupt => _
      @conn.close
      exit(0)
    end
  end

  private
  def set_queue queue_name
    @channel.queue( queue_name )
  end
end
