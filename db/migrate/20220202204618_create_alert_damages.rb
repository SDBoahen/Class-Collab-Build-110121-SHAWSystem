class CreateAlertDamages < ActiveRecord::Migration[6.1]
  def change
    create_table :alert_damages do |t|

      t.string :level
      
      t.belongs_to :alert, null: false, foreign_key: true
      t.belongs_to :damage_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
