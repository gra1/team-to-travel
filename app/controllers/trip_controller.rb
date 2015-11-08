class TripController < ApplicationController
  def create
    @trip = Trip.new(trip_params)
    @trip.owner = current_user
    @trip.save

    @own_trips = Trip.where(owner: current_user)

    @my_future_trips = @own_trips.future_trips
    @my_passed_trips =  @own_trips.passed_trips
  end

  def accept
    @request = TripRequest.find(params[:id])
    @requst.trip << @requst.requestor
    @request.destroy
  end

  private

  def trip_params
    params.require(:trip).permit(:destination, :start_date, :end_date, :description)
  end
end
