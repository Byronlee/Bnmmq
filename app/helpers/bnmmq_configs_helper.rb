module BnmmqConfigsHelper
  def bconfig config
    config ||= BnmmqConfig.new
  end
end
