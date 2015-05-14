angular.module "acforWorkflow"
  .factory "Machine", (RailsResource) ->
    class Machine extends RailsResource
      @configure url: "/api/machines", name: "machine"
  .factory "DayReport", (RailsResource) ->
    class DayReport extends RailsResource
      @configure url: "/api/day_reports", name: "day_report"
  .factory "MorningReport", (RailsResource) ->
    class MorningReport extends RailsResource
      @configure url: "/api/day_reports/:day_report_id/morning_reports/:id", name: "morning_report"
  .factory "MorningReport", (RailsResource) ->
    class MorningReport extends RailsResource
      @configure url: "/api/day_reports/:day_report_id/morning_reports", name: "morning_report"
  .factory "GreasingPoint", (RailsResource) ->
    class GreasingPoint extends RailsResource
      @configure url: "/api/day_reports/:day_report_id/greasing_points", name: "greasing_point"
  .factory "EndOfDayReport", (RailsResource) ->
    class EndOfDayReport extends RailsResource
      @configure url: "/api/day_reports/:day_report_id/end_of_day_reports", name: "end_of_day_report"
  .factory "HarvesterHeadCheck", (RailsResource) ->
    class HarvesterHeadCheck extends RailsResource
      @configure url: "/api/day_reports/:day_report_id/harvester_head_checks", name: "harvester_head_check"
  .factory "CarrierCheck", (RailsResource) ->
    class CarrierCheck extends RailsResource
      @configure url: "/api/day_reports/:day_report_id/carrier_checks", name: "carrier_check"
  .factory "CalibrationCheck", (RailsResource) ->
    class CalibrationCheck extends RailsResource
      @configure url: "/api/day_reports/:day_report_id/calibration_checks", name: "calibration_check"
