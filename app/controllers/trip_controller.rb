class TripController < ApplicationController
  def create
    @trip = Trip.new(trip_params)
    @trip.owner = current_user
    @trip.save

    head :ok
  end

  private

  def trip_params
    params.require(:trip).permit(:destination, :start_date, :end_date, :description)
  end
end
