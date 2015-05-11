class AddBelongsToDayReportsToMorningReports < ActiveRecord::Migration
  def change
    add_reference :morning_reports, :day_report, index: true
  end
end
