class CreateHarvesterHeadChecks < ActiveRecord::Migration
  def change
    create_table :harvester_head_checks do |t|
      t.belongs_to :day_report, index: true
      t.boolean :lubrication_device
      t.boolean :saw_chair_tension
      t.boolean :saw_chain_sharpness
      t.boolean :knives_sharpness
      t.boolean :chain_oil

      t.timestamps
    end
  end
end
