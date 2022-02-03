class CreateAlerts < ActiveRecord::Migration[6.1]
  def change
    create_table :alerts do |t|

      t.string :title
      t.string :description
      t.string :location
      t.datetime :alert_time

      t.belongs_to :user, null: true, foreign_key: true
      # t.integer :user_id

      t.timestamps
    end
  end
end

