# encoding: utf-8
class MessageAlarm

  def initialize
    @conn = Bunny.new(:automatically_recover => false)
    @conn.start
    @channel   = @conn.create_channel
    @queue = @channel.queue("message")
  end

  def alarm
    begin
      puts " [*] Waiting for messages. To exit press CTRL+C"
      @messageservice = MessageService.new
      @queue.subscribe(:ack => true, :block => true) do |delivery_info, properties, body|
        puts " [x] Received task #{body}"
        @messageservice.make_content body
        @messageservice.send
        puts " [x] task #{body} Done"
        @channel.ack(delivery_info.delivery_tag)
      end
    rescue Interrupt => _
      @conn.close
      exit(0)
    end
  end
end


