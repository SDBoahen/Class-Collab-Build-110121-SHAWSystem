class CreateDamageTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :damage_types do |t|
      
      t.string :level

      t.timestamps
    end
  end
end
