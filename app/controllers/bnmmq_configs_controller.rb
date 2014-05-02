class BnmmqConfigsController < ApplicationController
  
  def create
    BnmmqConfig.create(bnmmq_config_params)
    redirect_to dashboard_index_path
  end
  
  def update
    BnmmqConfig.first.update(bnmmq_config_params)
    redirect_to dashboard_index_path
  end

  private
  def bnmmq_config_params 
    params.require(:bnmmq_config).permit(:email,:tel)
  end 
end
