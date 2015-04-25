class CreateMorningReports < ActiveRecord::Migration
  def change
    create_table :morning_reports do |t|
      t.decimal :machine_hours
      t.boolean :timesheet
      t.boolean :engine_oil
      t.boolean :hydraulic_oil
      t.boolean :slewing_oil
      t.boolean :min_fuel_level
      t.string :chain_and_bar
      t.boolean :leak_check
      t.boolean :bolt_check

      t.timestamps
    end
  end
end
