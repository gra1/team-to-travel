class HomeController < ApplicationController

  add_flash_types :success
  add_flash_types :notice
  add_flash_types :alert

  respond_to :html,  :json

  def index
    #flash[:success] = "Our congratulation! You just loaded main page!"
  end
end
