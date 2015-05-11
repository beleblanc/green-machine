class CreateEndOfDayReports < ActiveRecord::Migration
  def change
    create_table :end_of_day_reports do |t|
      t.belongs_to :day_report, index: true
      t.boolean :hydraulic_oil
      t.boolean :loose_bolt_check
      t.boolean :leak_check
      t.text :comments

      t.timestamps
    end
  end
end
