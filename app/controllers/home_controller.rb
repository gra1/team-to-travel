class HomeController < ApplicationController

  add_flash_types :success
  add_flash_types :notice

  respond_to :html,  :json
  
  add_flash_types :alert

  def index
    flash[:success] = "Our congratulation! You just loaded main page!"
  end
end
