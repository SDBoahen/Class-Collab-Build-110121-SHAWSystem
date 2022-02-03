class CreateDamageTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :damage_types do |t|

      t.string :name

      # -x- t.string :level  :  NO!  >:[

      t.timestamps
    end
  end
end
