class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.integer :user_id, null: false
      t.text :body, null: false
      t.string :title, null: false

      t.timestamps null: false
    end
    add_index :journals, :user_id
  end
end
