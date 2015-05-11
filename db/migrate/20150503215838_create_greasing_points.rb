class CreateGreasingPoints < ActiveRecord::Migration
  def change
    create_table :greasing_points do |t|
      t.belongs_to :day_report, index: true
      t.boolean :rear_del_kni_slibea
      t.boolean :joint_rear_del_knicyl
      t.boolean :mea_whe_gli_bea
      t.boolean :sli_bea_fee_rol_sup
      t.boolean :rea_bar_gli_joi_bea
      t.boolean :sli_bra_fro_del_kni
      t.boolean :joint_front_del_knicyl
      t.boolean :sli_bea_fro_del_knicyl
      t.boolean :joi_bea_fee_rolcyl
      t.boolean :sli_bea_til_cylaxl
      t.boolean :bea_piv_frapint
      t.boolean :til_cyj_joibea
      t.boolean :saw_bar_joibea
      t.timestamps
    end
  end
end




