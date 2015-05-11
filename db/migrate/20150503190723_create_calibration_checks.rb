class CreateCalibrationChecks < ActiveRecord::Migration
  def change
    create_table :calibration_checks do |t|
      t.belongs_to :day_report, index: true
      t.integer :type
      t.boolean :checked

      t.timestamps
    end
  end
end
