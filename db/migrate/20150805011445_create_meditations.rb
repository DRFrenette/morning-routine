class CreateMeditations < ActiveRecord::Migration
  def change
    create_table :meditations do |t|
      t.integer :user_id, null: false
      t.integer :start_time, null: false
      t.integer :end_time, null: false

      t.timestamps null: false
    end
    add_index :meditations, :user_id
  end
end
