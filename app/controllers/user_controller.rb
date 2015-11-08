class UserController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @user = User.find(params[:id])
    @user_trips = @user.trips
    @own_trips = Trip.where(owner: @user)

    @my_future_trips = @own_trips.future_trips
    @my_passed_trips =  @own_trips.passed_trips
  end
end
