class HomeController < ApplicationController

  add_flash_types :success
  add_flash_types :notice
  add_flash_types :alert

  respond_to :html,  :json

  def index
    @user = current_user if current_user
    #flash[:success] = "Our congratulation! You just loaded main page!"
    @trips = Trip.all
  end

  def search
    @trips = Trip.all
    @trips = @trips.where('start_date <= ? AND end_date >= ?', params[:trip][:date].to_date, params[:trip][:date].to_date) unless params[:trip][:date].empty?
    @trips = @trips.where(destination: params[:trip][:destination]) unless params[:trip][:destination].empty?
  end
end
