class CreateWooblies < ActiveRecord::Migration[6.1]
  def change
    create_table :wooblies do |t|
      
      t.string :name
      t.string :hometown

      t.timestamps
    end
  end
end