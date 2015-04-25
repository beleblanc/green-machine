class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :name
      t.timestamps
    end
    
    add_index :machines, :name, unique:true
  end
end
