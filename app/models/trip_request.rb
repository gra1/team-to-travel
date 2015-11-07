class TripRequest < ActiveRecord::Base
  belongs_to :trip
  belongs_to :requestor, class_name: 'User', foreign_key: 'requestor_id'
end
