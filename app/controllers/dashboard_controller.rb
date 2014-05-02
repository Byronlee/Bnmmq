class DashboardController < ApplicationController

  def index
    @bnmmq_config = BnmmqConfig.first
  end

end
