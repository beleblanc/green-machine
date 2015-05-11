class CreateCarrierChecks < ActiveRecord::Migration
  def change
    create_table :carrier_checks do |t|
      t.belongs_to :day_report, index: true
      t.boolean :radiator_screen
      t.boolean :bogie_leaks

      t.timestamps
    end
  end
end
