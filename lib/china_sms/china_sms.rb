class ChinaSms
  include Singleton

  def initialize
    @plugin   = "smsbao"
    @username = "byronlee"
    @password = "lijianghua"
    @to       = 13880156590
    ChinaSMS.use @plugin.to_sym, username: @username, password: @password
  end

  def publish content
    ChinaSMS.to @to,content
  end  
end
