class CreateDayReports < ActiveRecord::Migration
  def change
    create_table :day_reports do |t|
      t.belongs_to :user, index: true
      t.belongs_to :machine, index: true
      t.date :date

      t.timestamps
    end

    add_index :day_reports, [:date, :machine_id], unique: true
  end
end
