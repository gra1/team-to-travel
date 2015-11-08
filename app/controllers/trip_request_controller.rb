class TripRequestController < ApplicationController
  def create
    @request = TripRequest.new(trip_request_params)
    @request.requestor = current_user
    @request.save

    head :ok
  end

  private

  def trip_request_params
    params.require(:trip_request).permit(:trip_id)
  end
end
