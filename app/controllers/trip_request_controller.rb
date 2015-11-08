class TripRequestController < ApplicationController
  def create
    @request = TripRequest.new(trip_id: params[:trip_id])
    @request.requestor = current_user
    @request.save

    head :ok
  end
end
