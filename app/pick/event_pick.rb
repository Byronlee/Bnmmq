# encoding: utf-8
class EventPick
  
  def initialize
    @conn = Bunny.new(:automatically_recover => false)
    @conn.start
    @channel   = @conn.create_channel
    @queue = @channel.queue("message")
  end

  def pick
    begin
      #  msg  = ARGV.empty? ? "Hello World!" : ARGV.join(" ")
      @queue.publish(x.to_s, :persistent => true)
      puts " [x] I published task #{x}"
    rescue Interrupt => _
      @conn.close
      exit(0)
    end
end
