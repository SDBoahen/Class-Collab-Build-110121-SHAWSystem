class CreateShaws < ActiveRecord::Migration[6.1]
  def change
    create_table :shaws do |t|

      t.string :name

      t.timestamps
    end
  end
end
