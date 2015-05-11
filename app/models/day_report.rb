class DayReport < ActiveRecord::Base
  belongs_to :user
  belongs_to :machine
  has_one :morning_report
  has_one :calibration_check
  has_one :greasing_report
  has_one :harvester_head_check
  has_one :carrier_check
  has_one :end_of_day_report
end
