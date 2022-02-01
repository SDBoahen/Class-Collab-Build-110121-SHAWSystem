class CreateWooblySnacks < ActiveRecord::Migration[6.1]
  def change
    create_table :woobly_snacks do |t|
      # create_table :(woobly_snack) s do |t|

      t.float :price

      t.string :special_additional_ingredients
      
      t.boolean :marked_as_healthy

      t.belongs_to :woobly, null: false, foreign_key: true  # woobly_id
      t.belongs_to :snack, null: false, foreign_key: true  # snack_id

      t.timestamps
    end
  end
end
