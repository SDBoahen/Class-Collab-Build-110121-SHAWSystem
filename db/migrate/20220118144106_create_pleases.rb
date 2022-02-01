class CreatePleases < ActiveRecord::Migration[6.1]
  def change
    create_table :pleases do |t|
      t.string :work

      t.timestamps
    end
  end
end
