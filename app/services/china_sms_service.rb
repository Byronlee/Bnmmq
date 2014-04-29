class ChinaSmsService

  def initialize
    @plugin = "smsbao"
    @username = "byronlee"
    @password = "lijianghua"
  end

  def client
    @client ||= ChinaSMS.use @plugin.to_sym, username: @username, password: @password
  end
end
